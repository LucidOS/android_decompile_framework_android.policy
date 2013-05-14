.class Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$4;
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
    .line 288
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$4;->this$1:Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$4;->this$1:Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #calls: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->goToUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$600(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)V

    .line 291
    return-void
.end method
