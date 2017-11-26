namespace TourDuLich.Service
{
    public class ResultState
    {
        public ResultState(bool state, string message)
        {
            Success = state;
            Message = message;
        }
        public ResultState(bool state, string message, object obj)
        {
            Success = state;
            Message = message;
            ResultObject = obj;
        }
        public bool Success { get; set; }
        public string Message { get; set; }
        public object ResultObject { get; set; }
    }
}