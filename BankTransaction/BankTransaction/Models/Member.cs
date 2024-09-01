using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BankTransaction.Models
{
    public class Member
    {
        [Key]
        public int memberID { get; set; }

        [Column(TypeName = "nvarchar(15)")]
        [DisplayName("First Name")]
        [Required(ErrorMessage = "This field is required.")]
        public string firstName { get; set; }

        [Column(TypeName = "nvarchar(15)")]
        [DisplayName("Last Name")]
        [Required(ErrorMessage = "This field is required.")]
        public string lastName { get; set; }

        [Column(TypeName = "nvarchar(30)")]
        [DisplayName("Email")]
        [Required(ErrorMessage = "This field is required.")]
        public string email { get; set; }

        [Column(TypeName = "nvarchar(100)")]
        [DisplayName("Mailing Address")]
        [Required(ErrorMessage = "This field is required.")]
        public string mailingAddress { get; set; }

        [Column(TypeName = "nvarchar(15)")]
        [DisplayName("Sending To")]
        [Required(ErrorMessage = "This field is required.")]
        public string sender { get; set; }
        [DisplayName("Picture")]
        [Required(ErrorMessage = "This field is required.")]
        public string picture { get; set; }
    }
}
