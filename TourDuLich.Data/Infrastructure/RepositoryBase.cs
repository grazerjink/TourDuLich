using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;

namespace TourDuLich.Data.Infrastructure
{
    public abstract class RepositoryBase<T> : IRepository<T> where T : class
    {
        #region Properties

        private TourDuLichEntities entities;
        private readonly IDbSet<T> dbSet;

        protected IDbFactory DbFactory
        {
            get;
            private set;
        }

        protected TourDuLichEntities DbContext
        {
            get { return entities ?? (entities = DbFactory.Init()); }
        }

        #endregion Properties

        protected RepositoryBase(IDbFactory dbFactory)
        {
            DbFactory = dbFactory;
            dbSet = DbContext.Set<T>();
        }

        #region Implementation

        public virtual T Add(T entity)
        {
            return dbSet.Add(entity);
        }

        public virtual void Update(T entity)
        {
            dbSet.Attach(entity);
            entities.Entry(entity).State = EntityState.Modified;
        }

        public virtual T Delete(T entity)
        {
            return dbSet.Remove(entity);
        }

        public virtual T Delete(int id)
        {
            var entity = dbSet.Find(id);
            return dbSet.Remove(entity);
        }

        public virtual void DeleteMulti(Expression<Func<T, bool>> where)
        {
            IEnumerable<T> objects = dbSet.Where<T>(where).AsEnumerable();
            foreach (T obj in objects)
                dbSet.Remove(obj);
        }

        public virtual IEnumerable<T> GetAll(string[] includes = null)
        {
            if (includes != null && includes.Count() > 0)
            {
                var query = entities.Set<T>().Include(includes.First());
                foreach (var include in includes.Skip(1))
                    query = query.Include(include);
                return query.AsEnumerable();
            }
            return entities.Set<T>().AsEnumerable();
        }

        public virtual IEnumerable<T> GetMulti(Expression<Func<T, bool>> predicate, string[] includes = null)
        {
            if (includes != null && includes.Count() > 0)
            {
                var query = entities.Set<T>().Include(includes.First());
                foreach (var include in includes.Skip(1))
                    query = query.Include(include);
                return query.Where<T>(predicate).AsQueryable<T>();
            }
            return entities.Set<T>().Where<T>(predicate).AsEnumerable<T>();
        }

        public virtual T GetSingleById(int id)
        {
            return dbSet.Find(id);
        }

        public virtual T GetSingleByCondition(Expression<Func<T, bool>> expression, string[] includes = null)
        {
            if (includes != null && includes.Count() > 0)
            {
                var query = entities.Set<T>().Include(includes.First());
                foreach (var include in includes.Skip(1))
                    query = query.Include(include);
                return query.FirstOrDefault(expression);
            }
            return entities.Set<T>().FirstOrDefault(expression);
        }

        public virtual bool CheckContains(Expression<Func<T, bool>> predicate)
        {
            return entities.Set<T>().Count<T>(predicate) > 0;
        }

        public virtual int Count(Expression<Func<T, bool>> where)
        {
            return dbSet.Count(where);
        }

        #endregion Implementation
    }
}