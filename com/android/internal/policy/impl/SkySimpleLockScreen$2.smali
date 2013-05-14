.class Lcom/android/internal/policy/impl/SkySimpleLockScreen$2;
.super Landroid/os/CountDownTimer;
.source "SkySimpleLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SkySimpleLockScreen;->autoCompleteUnlockSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SkySimpleLockScreen;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #calls: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->goToUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$1300(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)V

    .line 457
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .parameter "millisUntilFinished"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$400(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xf

    if-ge v0, v1, :cond_23

    .line 441
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitch:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$600(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->unlockSwitchImg:[I
    invoke-static {v1}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$500(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$404(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_23} :catch_24

    .line 449
    :cond_23
    :goto_23
    return-void

    .line 443
    :catch_24
    move-exception v0

    goto :goto_23
.end method
