.class Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "RoamingDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/internal/widget/RoamingDigitalClock;

.field final synthetic val$timezoneChanged:Z

.field final synthetic val$tz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver;ZLjava/lang/String;Lcom/android/internal/widget/RoamingDigitalClock;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver$1;->this$0:Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver$1;->val$tz:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/RoamingDigitalClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 92
    iget-boolean v1, p0, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v1, :cond_16

    .line 96
    iget-object v1, p0, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver$1;->val$tz:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 103
    .local v0, tzone:Ljava/util/TimeZone;
    iget-object v1, p0, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/RoamingDigitalClock;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/android/internal/widget/RoamingDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/android/internal/widget/RoamingDigitalClock;->access$002(Lcom/android/internal/widget/RoamingDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 106
    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 112
    .end local v0           #tzone:Ljava/util/TimeZone;
    :cond_16
    iget-object v1, p0, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/RoamingDigitalClock;

    invoke-virtual {v1}, Lcom/android/internal/widget/RoamingDigitalClock;->updateTime()V

    .line 113
    return-void
.end method
