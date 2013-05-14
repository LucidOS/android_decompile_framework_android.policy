.class Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4$1;
.super Ljava/lang/Object;
.source "Sky6KnobLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4;)V
    .registers 2
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4;

    iget-object v1, v1, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCurrentFlipMode:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$500(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)I

    move-result v1

    #calls: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->onTrigger(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$800(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;I)V

    .line 347
    return-void
.end method
