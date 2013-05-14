.class Lcom/android/internal/widget/SkyVisualSlidingTab$1;
.super Ljava/lang/Object;
.source "SkyVisualSlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyVisualSlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SkyVisualSlidingTab;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkyVisualSlidingTab;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$1;->this$0:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$1;->this$0:Lcom/android/internal/widget/SkyVisualSlidingTab;

    #calls: Lcom/android/internal/widget/SkyVisualSlidingTab;->onAnimationDone()V
    invoke-static {v0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->access$000(Lcom/android/internal/widget/SkyVisualSlidingTab;)V

    .line 104
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 100
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 96
    return-void
.end method
