.class Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RoamingDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RoamingDigitalClock;
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
            "Lcom/android/internal/widget/RoamingDigitalClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/RoamingDigitalClock;)V
    .registers 3
    .parameter "clock"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    .line 75
    invoke-virtual {p1}, Lcom/android/internal/widget/RoamingDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 85
    .local v1, timezoneChanged:Z
    const-string v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, tz:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RoamingDigitalClock;

    .line 89
    .local v0, clock:Lcom/android/internal/widget/RoamingDigitalClock;
    if-eqz v0, :cond_27

    .line 90
    #getter for: Lcom/android/internal/widget/RoamingDigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/RoamingDigitalClock;->access$100(Lcom/android/internal/widget/RoamingDigitalClock;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver$1;-><init>(Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver;ZLjava/lang/String;Lcom/android/internal/widget/RoamingDigitalClock;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :goto_26
    return-void

    .line 117
    :cond_27
    :try_start_27
    iget-object v3, p0, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_26

    .line 118
    :catch_2d
    move-exception v3

    goto :goto_26
.end method
