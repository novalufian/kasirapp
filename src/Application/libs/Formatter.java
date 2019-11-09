package Application.libs;

import java.text.DecimalFormat;

public class Formatter {

    public String curencyFormater(Integer number){
        String newValueStr = "";
        try {
            Integer kb = 0;
            DecimalFormat formatter = new DecimalFormat("#,###");
            newValueStr = formatter.format(Double.parseDouble(number.toString()));
        }catch (Exception e){
        }
        return newValueStr;
    }
}
