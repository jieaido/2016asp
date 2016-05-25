using System.Web.UI.WebControls;

namespace MyControl
{
    public class LengthValidator2:BaseValidator
    {
        public int MaximumLength { get; set; } = 0;

        protected override bool EvaluateIsValid()
        {
            string value = this.GetControlValidationValue(this.ControlToValidate);
            if (value.Length > MaximumLength)
            {
                return false;
            }
            return true;
        }
    }
}