.class Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "SkyRoamingDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/internal/widget/SkyRoamingDigitalClock;

.field final synthetic val$timezoneChanged:Z

.field final synthetic val$tz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver;ZLjava/lang/String;Lcom/android/internal/widget/SkyRoamingDigitalClock;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver$1;->this$0:Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver$1;->val$tz:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 88
    iget-boolean v1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v1, :cond_75

    .line 94
    iget-object v1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver$1;->val$tz:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 95
    .local v0, tzone:Ljava/util/TimeZone;
    const-string v1, "SkyRoamingClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_TIMEZONE_CHANGED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver$1;->val$tz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v1, "SkyRoamingClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current TimeZone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->access$002(Lcom/android/internal/widget/SkyRoamingDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 99
    iget-object v1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDummyCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->access$102(Lcom/android/internal/widget/SkyRoamingDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 102
    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 103
    const-string v1, "SkyRoamingClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default TimeZone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v0           #tzone:Ljava/util/TimeZone;
    :cond_75
    iget-object v1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    invoke-virtual {v1}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->updateTime()V

    .line 106
    return-void
.end method
