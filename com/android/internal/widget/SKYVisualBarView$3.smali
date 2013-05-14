.class Lcom/android/internal/widget/SKYVisualBarView$3;
.super Ljava/lang/Object;
.source "SKYVisualBarView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SKYVisualBarView;->animationShort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SKYVisualBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SKYVisualBarView;)V
    .registers 2
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/internal/widget/SKYVisualBarView$3;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView$3;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/widget/SKYVisualBarView;->mDragMode:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$002(Lcom/android/internal/widget/SKYVisualBarView;Z)Z

    .line 317
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 312
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 306
    return-void
.end method
