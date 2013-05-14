.class Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;
.super Ljava/lang/Thread;
.source "SkySimpleLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$1100(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1$1;-><init>(Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method
