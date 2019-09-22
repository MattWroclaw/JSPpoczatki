package paczka;

public class UptimeService {
    private long startTime = System.currentTimeMillis();

    public String getUpTimeService(){
        long upTime = System.currentTimeMillis()-startTime;
        long hours = upTime/3600000;
        long minutes = upTime/60000 %60;
        long seconds = upTime / 1000 %60;

        return String.format("Uptime: %dh %dm %ds", hours, minutes, seconds);
    }
}
