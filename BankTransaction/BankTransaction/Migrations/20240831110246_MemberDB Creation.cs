using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BankTransaction.Migrations
{
    /// <inheritdoc />
    public partial class MemberDBCreation : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Members",
                columns: table => new
                {
                    memberID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    firstName = table.Column<string>(type: "nvarchar(15)", nullable: false),
                    lastName = table.Column<string>(type: "nvarchar(15)", nullable: false),
                    email = table.Column<string>(type: "nvarchar(30)", nullable: false),
                    mailingAddress = table.Column<string>(type: "nvarchar(100)", nullable: false),
                    sender = table.Column<string>(type: "nvarchar(15)", nullable: false),
                    picture = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Members", x => x.memberID);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Members");
        }
    }
}
