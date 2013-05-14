.class Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$2;
.super Ljava/lang/Object;
.source "SkyGestureLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->onGesturePerformed(Lcom/android/internal/widget/SkyGestureOverlayView;Landroid/gesture/Gesture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;)V
    .registers 2
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$2;->this$1:Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$2;->this$1:Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$200(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$2;->this$1:Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$200(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10405af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 259
    :cond_18
    return-void
.end method
