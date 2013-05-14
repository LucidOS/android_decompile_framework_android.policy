.class Lcom/android/internal/widget/SkyDigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "SkyDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field private mClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/widget/SkyDigitalClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/SkyDigitalClock;)V
    .registers 3
    .parameter "clock"

    .prologue
    .line 227
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 228
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    .line 229
    invoke-virtual {p1}, Lcom/android/internal/widget/SkyDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock$FormatChangeObserver;->mContext:Landroid/content/Context;

    .line 230
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkyDigitalClock;

    .line 234
    .local v0, digitalClock:Lcom/android/internal/widget/SkyDigitalClock;
    if-eqz v0, :cond_11

    .line 235
    #calls: Lcom/android/internal/widget/SkyDigitalClock;->setTimeFormat()V
    invoke-static {v0}, Lcom/android/internal/widget/SkyDigitalClock;->access$100(Lcom/android/internal/widget/SkyDigitalClock;)V

    .line 236
    invoke-virtual {v0}, Lcom/android/internal/widget/SkyDigitalClock;->updateTime()V

    .line 244
    :goto_10
    return-void

    .line 239
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock$FormatChangeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_10

    .line 240
    :catch_1b
    move-exception v1

    goto :goto_10
.end method
