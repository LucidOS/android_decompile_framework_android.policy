.class Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SkySimpleDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkySimpleDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeChangedReceiver"
.end annotation


# instance fields
.field private mClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/widget/SkySimpleDigitalClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/SkySimpleDigitalClock;)V
    .registers 3
    .parameter "clock"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    .line 73
    invoke-virtual {p1}, Lcom/android/internal/widget/SkySimpleDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 83
    .local v1, timezoneChanged:Z
    const-string v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, tz:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkySimpleDigitalClock;

    .line 87
    .local v0, clock:Lcom/android/internal/widget/SkySimpleDigitalClock;
    if-eqz v0, :cond_27

    .line 88
    #getter for: Lcom/android/internal/widget/SkySimpleDigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->access$100(Lcom/android/internal/widget/SkySimpleDigitalClock;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver$1;-><init>(Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver;ZLjava/lang/String;Lcom/android/internal/widget/SkySimpleDigitalClock;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    :goto_26
    return-void

    .line 115
    :cond_27
    :try_start_27
    iget-object v3, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_26

    .line 116
    :catch_2d
    move-exception v3

    goto :goto_26
.end method
