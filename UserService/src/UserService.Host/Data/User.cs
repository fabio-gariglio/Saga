using Microsoft.EntityFrameworkCore;

namespace UserService.Host.Data
{
    public class User
    {
        public string Id { get; set;}
        public string EmailAddress { get; set; }
        public string PasswordHash {get; set; }
    }
}