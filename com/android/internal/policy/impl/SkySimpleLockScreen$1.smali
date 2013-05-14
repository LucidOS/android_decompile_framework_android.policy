.class Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;
.super Ljava/lang/Object;
.source "SkySimpleLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SkySimpleLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "v"
    .parameter "event"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    .line 170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 175
    .local v2, motionAction:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mSimLockState:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$000(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 260
    :cond_f
    :goto_f
    return v7

    .line 178
    :cond_10
    packed-switch v2, :pswitch_data_d8

    goto :goto_f

    .line 181
    :pswitch_14
    :try_start_14
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockArrow:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$100(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$200(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 183
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mStartY:F
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$302(Lcom/android/internal/policy/impl/SkySimpleLockScreen;F)F

    .line 184
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$402(Lcom/android/internal/policy/impl/SkySimpleLockScreen;I)I

    .line 185
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitch:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$600(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->unlockSwitchImg:[I
    invoke-static {v4}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$500(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$400(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 186
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #setter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mTmpTime:J
    invoke-static {v3, v4, v5}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$702(Lcom/android/internal/policy/impl/SkySimpleLockScreen;J)J

    .line 187
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$800(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 188
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    const-wide/16 v4, 0x14

    #calls: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->vibrate(J)V
    invoke-static {v3, v4, v5}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$900(Lcom/android/internal/policy/impl/SkySimpleLockScreen;J)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_66} :catch_67

    goto :goto_f

    .line 189
    :catch_67
    move-exception v3

    goto :goto_f

    .line 196
    :pswitch_69
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    #calls: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->isChangeSwitchImgIdx(F)Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$1000(Lcom/android/internal/policy/impl/SkySimpleLockScreen;F)Z

    move-result v3

    if-ne v3, v7, :cond_f

    .line 202
    new-instance v3, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;-><init>(Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;)V

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1$1;->start()V

    goto :goto_f

    .line 224
    :pswitch_7e
    :try_start_7e
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchOff:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$1200(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Z

    move-result v3

    if-ne v3, v7, :cond_ca

    .line 229
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$400(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_9a

    .line 230
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #calls: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->goToUnlock()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$1300(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)V

    goto/16 :goto_f

    .line 248
    :catch_97
    move-exception v3

    goto/16 :goto_f

    .line 232
    :cond_9a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 238
    .local v0, curTime:J
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mTmpTime:J
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$700(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_c4

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mTmpTime:J
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$700(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-gez v3, :cond_c4

    .line 239
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #calls: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->autoCompleteUnlockSwitch()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$1400(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)V

    .line 243
    :goto_bb
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    const-wide/16 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mTmpTime:J
    invoke-static {v3, v4, v5}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$702(Lcom/android/internal/policy/impl/SkySimpleLockScreen;J)J

    goto/16 :goto_f

    .line 241
    :cond_c4
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #calls: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->initSwitchImage()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$1500(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)V

    goto :goto_bb

    .line 246
    .end local v0           #curTime:J
    :cond_ca
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #calls: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->initSwitchImage()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$1500(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_cf} :catch_97

    goto/16 :goto_f

    .line 255
    :pswitch_d1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkySimpleLockScreen;

    #calls: Lcom/android/internal/policy/impl/SkySimpleLockScreen;->initSwitchImage()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->access$1500(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)V

    goto/16 :goto_f

    .line 178
    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_14
        :pswitch_7e
        :pswitch_69
        :pswitch_d1
    .end packed-switch
.end method
