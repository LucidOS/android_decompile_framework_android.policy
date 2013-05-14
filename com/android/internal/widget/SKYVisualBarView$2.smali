.class Lcom/android/internal/widget/SKYVisualBarView$2;
.super Ljava/lang/Object;
.source "SKYVisualBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SKYVisualBarView;
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
    .line 159
    iput-object p1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 17
    .parameter "v"
    .parameter "event"

    .prologue
    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 164
    .local v9, action:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 165
    .local v12, x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 166
    .local v13, y:F
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    const/16 v2, 0x2d

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->dipToPx(I)I
    invoke-static {v1, v2}, Lcom/android/internal/widget/SKYVisualBarView;->access$200(Lcom/android/internal/widget/SKYVisualBarView;I)I

    move-result v11

    .line 167
    .local v11, tabMargin:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_15e

    .line 248
    :cond_1b
    :goto_1b
    :pswitch_1b
    const/4 v1, 0x0

    return v1

    .line 169
    :pswitch_1d
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->returnNormal()V
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$400(Lcom/android/internal/widget/SKYVisualBarView;)V

    .line 170
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$500(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/widget/SKYVisualBarView;->access$500(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    const-wide/16 v2, 0x14

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->vibrate(J)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/widget/SKYVisualBarView;->access$600(Lcom/android/internal/widget/SKYVisualBarView;J)V

    .line 172
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTouchedEffectView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$700(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 173
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/widget/SKYVisualBarView;->mTriggered:Z
    invoke-static {v1, v2}, Lcom/android/internal/widget/SKYVisualBarView;->access$802(Lcom/android/internal/widget/SKYVisualBarView;Z)Z

    .line 174
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 176
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 178
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTouchedEffectView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$700(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTouchedEffectView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$700(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$900(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0x1293dc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTouchView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$1000(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/view/View;

    move-result-object v1

    const v2, 0x108086d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 183
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$1100(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_a6

    .line 184
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$1100(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 185
    :cond_a6
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->animationShort()V
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$1200(Lcom/android/internal/widget/SKYVisualBarView;)V

    .line 186
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/widget/SKYVisualBarView;->mDragMode:Z
    invoke-static {v1, v2}, Lcom/android/internal/widget/SKYVisualBarView;->access$002(Lcom/android/internal/widget/SKYVisualBarView;Z)Z

    .line 187
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v2, 0x1

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->checkMissedCountShowInTouchMode(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/widget/SKYVisualBarView;->access$1300(Lcom/android/internal/widget/SKYVisualBarView;Z)V

    goto/16 :goto_1b

    .line 192
    .end local v0           #animation:Landroid/view/animation/Animation;
    :pswitch_b9
    const/high16 v1, 0x4402

    cmpl-float v1, v12, v1

    if-lez v1, :cond_d3

    .line 193
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTriggered:Z
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$800(Lcom/android/internal/widget/SKYVisualBarView;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 194
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->returnNormal()V
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$400(Lcom/android/internal/widget/SKYVisualBarView;)V

    .line 195
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->dispatchTriggerEvent()V
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$1400(Lcom/android/internal/widget/SKYVisualBarView;)V

    goto/16 :goto_1b

    .line 199
    :cond_d3
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->returnNormal()V
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$400(Lcom/android/internal/widget/SKYVisualBarView;)V

    goto/16 :goto_1b

    .line 203
    :pswitch_da
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->returnNormal()V
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$400(Lcom/android/internal/widget/SKYVisualBarView;)V

    goto/16 :goto_1b

    .line 208
    :pswitch_e1
    const/4 v1, 0x0

    cmpg-float v1, v13, v1

    if-ltz v1, :cond_ec

    const/high16 v1, 0x433e

    cmpl-float v1, v13, v1

    if-lez v1, :cond_f3

    .line 209
    :cond_ec
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->returnNormal()V
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$400(Lcom/android/internal/widget/SKYVisualBarView;)V

    goto/16 :goto_1b

    .line 211
    :cond_f3
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mDragMode:Z
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$000(Lcom/android/internal/widget/SKYVisualBarView;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_133

    .line 221
    const/high16 v1, 0x4402

    cmpl-float v1, v12, v1

    if-lez v1, :cond_10a

    .line 226
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/widget/SKYVisualBarView;->mDragMode:Z
    invoke-static {v1, v2}, Lcom/android/internal/widget/SKYVisualBarView;->access$002(Lcom/android/internal/widget/SKYVisualBarView;Z)Z

    goto/16 :goto_1b

    .line 228
    :cond_10a
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    const/16 v2, 0x5a

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->dipToPx(I)I
    invoke-static {v1, v2}, Lcom/android/internal/widget/SKYVisualBarView;->access$200(Lcom/android/internal/widget/SKYVisualBarView;I)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v12, v1

    float-to-int v1, v1

    add-int v10, v1, v11

    .line 229
    .local v10, shift:I
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$300(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ltz v10, :cond_131

    .end local v10           #shift:I
    :goto_120
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v10, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 230
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$300(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_1b

    .line 229
    .restart local v10       #shift:I
    :cond_131
    const/4 v10, 0x0

    goto :goto_120

    .line 236
    .end local v10           #shift:I
    :cond_133
    const/high16 v1, 0x4402

    cmpg-float v1, v12, v1

    if-gez v1, :cond_13f

    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/widget/SKYVisualBarView;->mDragMode:Z
    invoke-static {v1, v2}, Lcom/android/internal/widget/SKYVisualBarView;->access$002(Lcom/android/internal/widget/SKYVisualBarView;Z)Z

    .line 238
    :cond_13f
    const/high16 v1, 0x4402

    cmpl-float v1, v12, v1

    if-lez v1, :cond_1b

    .line 239
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$300(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x1a4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 240
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView$2;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYVisualBarView;->access$300(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_1b

    .line 167
    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_b9
        :pswitch_e1
        :pswitch_1b
        :pswitch_da
    .end packed-switch
.end method
