.class Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$3;
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
    .line 273
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$3;->this$1:Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$3;->this$1:Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$400(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Lcom/android/internal/widget/SkyGestureOverlayView;

    move-result-object v0

    if-nez v0, :cond_b

    .line 279
    :goto_a
    return-void

    .line 278
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$3;->this$1:Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$400(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Lcom/android/internal/widget/SkyGestureOverlayView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyGestureOverlayView;->setEnabled(Z)V

    goto :goto_a
.end method
