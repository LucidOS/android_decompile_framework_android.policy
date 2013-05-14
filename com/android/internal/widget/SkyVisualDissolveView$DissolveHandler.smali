.class Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;
.super Landroid/os/Handler;
.source "SkyVisualDissolveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyVisualDissolveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DissolveHandler"
.end annotation


# static fields
.field private static final SHOW:I


# instance fields
.field private mAccel:Landroid/view/animation/AccelerateInterpolator;

.field private mDuration:I

.field private mShowAlpha:I

.field private mStartShowTimeMil:J

.field final synthetic this$0:Lcom/android/internal/widget/SkyVisualDissolveView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/SkyVisualDissolveView;)V
    .registers 4
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->this$0:Lcom/android/internal/widget/SkyVisualDissolveView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mStartShowTimeMil:J

    .line 140
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mDuration:I

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mShowAlpha:I

    .line 147
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mAccel:Landroid/view/animation/AccelerateInterpolator;

    .line 148
    return-void
.end method


# virtual methods
.method public getShowAlpha()I
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mShowAlpha:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 167
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_46

    .line 191
    :goto_5
    return-void

    .line 169
    :pswitch_6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mStartShowTimeMil:J

    sub-long v1, v3, v5

    .line 171
    .local v1, timeDiff:J
    iget v3, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mDuration:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1f

    .line 173
    const/16 v3, 0xff

    iput v3, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mShowAlpha:I

    .line 174
    iget-object v3, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->this$0:Lcom/android/internal/widget/SkyVisualDissolveView;

    invoke-virtual {v3}, Lcom/android/internal/widget/SkyVisualDissolveView;->invalidate()V

    goto :goto_5

    .line 178
    :cond_1f
    const/high16 v3, 0x3f80

    long-to-float v4, v1

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mDuration:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 180
    .local v0, progress:F
    iget-object v3, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mAccel:Landroid/view/animation/AccelerateInterpolator;

    if-eqz v3, :cond_32

    .line 181
    iget-object v3, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mAccel:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v3, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 183
    :cond_32
    const/high16 v3, 0x437f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mShowAlpha:I

    .line 185
    iget-object v3, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->this$0:Lcom/android/internal/widget/SkyVisualDissolveView;

    invoke-virtual {v3}, Lcom/android/internal/widget/SkyVisualDissolveView;->invalidate()V

    .line 187
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 167
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public startDisolve()V
    .registers 3

    .prologue
    .line 151
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mStartShowTimeMil:J

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    return-void
.end method

.method public stopDisolve()V
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->removeMessages(I)V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->mAccel:Landroid/view/animation/AccelerateInterpolator;

    .line 159
    return-void
.end method
