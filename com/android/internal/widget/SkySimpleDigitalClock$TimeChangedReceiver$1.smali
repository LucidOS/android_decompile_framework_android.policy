.class Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "SkySimpleDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/internal/widget/SkySimpleDigitalClock;

.field final synthetic val$timezoneChanged:Z

.field final synthetic val$tz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver;ZLjava/lang/String;Lcom/android/internal/widget/SkySimpleDigitalClock;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver$1;->this$0:Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver$1;->val$tz:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/SkySimpleDigitalClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 90
    iget-boolean v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v1, :cond_16

    .line 94
    iget-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver$1;->val$tz:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 101
    .local v0, tzone:Ljava/util/TimeZone;
    iget-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/SkySimpleDigitalClock;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/android/internal/widget/SkySimpleDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/android/internal/widget/SkySimpleDigitalClock;->access$002(Lcom/android/internal/widget/SkySimpleDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 104
    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 110
    .end local v0           #tzone:Ljava/util/TimeZone;
    :cond_16
    iget-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/SkySimpleDigitalClock;

    invoke-virtual {v1}, Lcom/android/internal/widget/SkySimpleDigitalClock;->updateTime()V

    .line 111
    return-void
.end method
