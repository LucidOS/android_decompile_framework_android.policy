.class Lcom/android/internal/widget/SKYBGPControlView$1;
.super Landroid/os/Handler;
.source "SKYBGPControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SKYBGPControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SKYBGPControlView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SKYBGPControlView;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 64
    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_35

    packed-switch v1, :pswitch_data_118

    .line 126
    :cond_6
    :goto_6
    return-void

    .line 67
    :pswitch_7
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$000(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/SlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->isMoving()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 68
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$000(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/SlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-ne v1, v3, :cond_37

    .line 69
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$100(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x10804a1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2b} :catch_2c

    goto :goto_6

    .line 83
    :catch_2c
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    :try_start_2d
    const-string v1, "SKYBGPControlView"

    const-string v2, "Widget Not Ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_34} :catch_35

    goto :goto_6

    .line 123
    .end local v0           #e:Ljava/lang/Exception;
    :catch_35
    move-exception v1

    goto :goto_6

    .line 72
    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$100(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x108049f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 76
    :cond_44
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$000(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/SlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-ne v1, v3, :cond_5d

    .line 77
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$100(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x10804a0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 80
    :cond_5d
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$100(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x108049e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_69} :catch_2c

    goto :goto_6

    .line 89
    :pswitch_6a
    :try_start_6a
    const-string v1, "SKYBGPControlView"

    const-string v2, "mHandler received MESSAGE_MARQUEE_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_71} :catch_35

    .line 92
    :try_start_71
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$200(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 93
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$200(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 94
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$200(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 96
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$300(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 97
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$300(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$300(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_af} :catch_b1

    goto/16 :goto_6

    .line 99
    :catch_b1
    move-exception v0

    .line 100
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_b2
    const-string v1, "SKYBGPControlView"

    const-string v2, "Widget Not Ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 105
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_bb
    const-string v1, "SKYBGPControlView"

    const-string v2, "mHandler received MESSAGE_MARQUEE_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c2} :catch_35

    .line 108
    :try_start_c2
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$000(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/SlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-ne v1, v3, :cond_6

    .line 109
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$200(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$200(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 111
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$200(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$300(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 114
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$300(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 115
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$1;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$300(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_10c} :catch_10e

    goto/16 :goto_6

    .line 117
    :catch_10e
    move-exception v0

    .line 118
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_10f
    const-string v1, "SKYBGPControlView"

    const-string v2, "Widget Not Ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_116} :catch_35

    goto/16 :goto_6

    .line 64
    :pswitch_data_118
    .packed-switch 0xc9
        :pswitch_7
        :pswitch_6a
        :pswitch_bb
    .end packed-switch
.end method
