.class Lcom/android/internal/policy/impl/KeyguardViewManager$2;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

.field final synthetic val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardViewBase;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    monitor-enter v1

    .line 310
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->cleanUp()V

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->recursiveRecycleView(Landroid/view/View;)V

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method
