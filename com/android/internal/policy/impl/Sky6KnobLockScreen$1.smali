.class Lcom/android/internal/policy/impl/Sky6KnobLockScreen$1;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.source "Sky6KnobLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Sky6KnobLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$1;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .registers 6
    .parameter "phoneState"

    .prologue
    const/4 v3, 0x1

    .line 170
    const-string v0, "Sky6KnobLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-ne p1, v3, :cond_20

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$1;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #setter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mVanishingAndRinging:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$002(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;Z)Z

    .line 176
    :cond_20
    return-void
.end method
