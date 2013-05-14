.class Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "SkyDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/internal/widget/SkyDigitalClock;

.field final synthetic val$timezoneChanged:Z

.field final synthetic val$tz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver;ZLjava/lang/String;Lcom/android/internal/widget/SkyDigitalClock;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver$1;->this$0:Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver$1;->val$tz:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/SkyDigitalClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 85
    iget-boolean v1, p0, Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v1, :cond_15

    .line 89
    iget-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver$1;->val$tz:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 96
    .local v0, tzone:Ljava/util/TimeZone;
    iget-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/SkyDigitalClock;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/widget/SkyDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 99
    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 105
    .end local v0           #tzone:Ljava/util/TimeZone;
    :cond_15
    iget-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/SkyDigitalClock;

    invoke-virtual {v1}, Lcom/android/internal/widget/SkyDigitalClock;->updateTime()V

    .line 106
    return-void
.end method
