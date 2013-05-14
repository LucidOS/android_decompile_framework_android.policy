.class Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1$1;
.super Ljava/lang/Object;
.source "SkySimpleLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;)V
    .registers 2
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1$1;->this$2:Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1$1;->this$2:Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$200(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_33

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1$1;->this$2:Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitch:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$600(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1$1;->this$2:Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->unlockSwitchImg:[I
    invoke-static {v1}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$500(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1$1;->this$2:Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$400(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    .line 216
    :cond_33
    :goto_33
    return-void

    .line 211
    :catch_34
    move-exception v0

    goto :goto_33
.end method
