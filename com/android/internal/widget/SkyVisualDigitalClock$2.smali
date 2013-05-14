.class Lcom/android/internal/widget/SkyVisualDigitalClock$2;
.super Landroid/content/BroadcastReceiver;
.source "SkyVisualDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyVisualDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkyVisualDigitalClock;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$2;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_93

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 191
    const-string v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, tz:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 195
    .local v2, tzone:Ljava/util/TimeZone;
    const-string v3, "SkyVisualDigitalClock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_TIMEZONE_CHANGED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v3, "SkyVisualDigitalClock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current TimeZone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v3, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$2;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    #setter for: Lcom/android/internal/widget/SkyVisualDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v3, v4}, Lcom/android/internal/widget/SkyVisualDigitalClock;->access$002(Lcom/android/internal/widget/SkyVisualDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 199
    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 200
    const-string v3, "SkyVisualDigitalClock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default TimeZone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v3, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$2;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDigitalClock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/android/internal/widget/SkyVisualDigitalClock;->access$200(Lcom/android/internal/widget/SkyVisualDigitalClock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 202
    iget-object v3, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$2;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDigitalClock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/android/internal/widget/SkyVisualDigitalClock;->access$200(Lcom/android/internal/widget/SkyVisualDigitalClock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$2;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/internal/widget/SkyVisualDigitalClock;->access$000(Lcom/android/internal/widget/SkyVisualDigitalClock;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 215
    .end local v1           #tz:Ljava/lang/String;
    .end local v2           #tzone:Ljava/util/TimeZone;
    :cond_93
    iget-object v3, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$2;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    invoke-virtual {v3}, Lcom/android/internal/widget/SkyVisualDigitalClock;->updateTime()V

    .line 216
    return-void
.end method
