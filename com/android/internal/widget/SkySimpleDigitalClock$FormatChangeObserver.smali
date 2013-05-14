.class Lcom/android/internal/widget/SkySimpleDigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "SkySimpleDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkySimpleDigitalClock;
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
    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 166
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    .line 167
    invoke-virtual {p1}, Lcom/android/internal/widget/SkySimpleDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$FormatChangeObserver;->mContext:Landroid/content/Context;

    .line 168
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkySimpleDigitalClock;

    .line 173
    .local v0, digitalClock:Lcom/android/internal/widget/SkySimpleDigitalClock;
    if-eqz v0, :cond_11

    .line 174
    #calls: Lcom/android/internal/widget/SkySimpleDigitalClock;->setTimeFormat()V
    invoke-static {v0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->access$200(Lcom/android/internal/widget/SkySimpleDigitalClock;)V

    .line 175
    invoke-virtual {v0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->updateTime()V

    .line 183
    :goto_10
    return-void

    .line 178
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$FormatChangeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_10

    .line 179
    :catch_1b
    move-exception v1

    goto :goto_10
.end method
