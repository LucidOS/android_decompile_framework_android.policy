.class Lcom/android/internal/widget/SkyVisualSlidingTab$2;
.super Ljava/lang/Object;
.source "SkyVisualSlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SkyVisualSlidingTab;->startAnimating(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ended:Z

.field final synthetic this$0:Lcom/android/internal/widget/SkyVisualSlidingTab;

.field final synthetic val$holdAfter:Z


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkyVisualSlidingTab;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$2;->this$0:Lcom/android/internal/widget/SkyVisualSlidingTab;

    iput-boolean p2, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$2;->val$holdAfter:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$2;->ended:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 822
    iget-boolean v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$2;->ended:Z

    if-eqz v0, :cond_b

    .line 824
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$2;->this$0:Lcom/android/internal/widget/SkyVisualSlidingTab;

    #setter for: Lcom/android/internal/widget/SkyVisualSlidingTab;->mAnimating:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/SkyVisualSlidingTab;->access$202(Lcom/android/internal/widget/SkyVisualSlidingTab;Z)Z

    .line 848
    :goto_a
    return-void

    .line 828
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$2;->ended:Z

    .line 830
    iget-boolean v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$2;->val$holdAfter:Z

    if-eqz v0, :cond_18

    .line 833
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$2;->this$0:Lcom/android/internal/widget/SkyVisualSlidingTab;

    #setter for: Lcom/android/internal/widget/SkyVisualSlidingTab;->mAnimating:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/SkyVisualSlidingTab;->access$202(Lcom/android/internal/widget/SkyVisualSlidingTab;Z)Z

    goto :goto_a

    .line 838
    :cond_18
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$2;->this$0:Lcom/android/internal/widget/SkyVisualSlidingTab;

    #setter for: Lcom/android/internal/widget/SkyVisualSlidingTab;->mAnimating:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/SkyVisualSlidingTab;->access$202(Lcom/android/internal/widget/SkyVisualSlidingTab;Z)Z

    .line 839
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$2;->this$0:Lcom/android/internal/widget/SkyVisualSlidingTab;

    #calls: Lcom/android/internal/widget/SkyVisualSlidingTab;->resetView()V
    invoke-static {v0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->access$300(Lcom/android/internal/widget/SkyVisualSlidingTab;)V

    goto :goto_a
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 852
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 856
    return-void
.end method
