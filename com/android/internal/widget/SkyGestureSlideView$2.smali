.class Lcom/android/internal/widget/SkyGestureSlideView$2;
.super Ljava/lang/Object;
.source "SkyGestureSlideView.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SkyGestureSlideView;->createSubView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SkyGestureSlideView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkyGestureSlideView;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/widget/SkyGestureSlideView$2;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    iput-object p2, p0, Lcom/android/internal/widget/SkyGestureSlideView$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .registers 5

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/internal/widget/SkyGestureSlideView$2;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/widget/SkyGestureSlideView;->access$100(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x10806e0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    const-string v1, "SkyGestureSlideView"

    const-string v2, "onDrawerOpened()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :try_start_13
    iget-object v1, p0, Lcom/android/internal/widget/SkyGestureSlideView$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sky_gesture_slide_viewmode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/pantech/providers/skysettings/SKYDisplay;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_20

    .line 108
    :goto_1f
    return-void

    .line 105
    :catch_20
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SkyGestureSlideView"

    const-string v2, "DB Write Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method
