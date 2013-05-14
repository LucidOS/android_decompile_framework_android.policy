.class Lcom/android/internal/widget/SKYVisualBarView$1;
.super Ljava/lang/Object;
.source "SKYVisualBarView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 90
    iput-object p1, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 12
    .parameter "msg"

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0x5a

    const/16 v7, 0x2d

    const/4 v2, 0x0

    .line 95
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_e6

    .line 155
    :cond_c
    :goto_c
    return v2

    .line 98
    :pswitch_d
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mDragMode:Z
    invoke-static {v3}, Lcom/android/internal/widget/SKYVisualBarView;->access$000(Lcom/android/internal/widget/SKYVisualBarView;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 100
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mDensity:F
    invoke-static {v3}, Lcom/android/internal/widget/SKYVisualBarView;->access$100(Lcom/android/internal/widget/SKYVisualBarView;)F

    move-result v3

    const/high16 v4, 0x4000

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5a

    .line 102
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->dipToPx(I)I
    invoke-static {v3, v7}, Lcom/android/internal/widget/SKYVisualBarView;->access$200(Lcom/android/internal/widget/SKYVisualBarView;I)I

    move-result v1

    .line 104
    .local v1, tabMargin:I
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->dipToPx(I)I
    invoke-static {v4, v8}, Lcom/android/internal/widget/SKYVisualBarView;->access$200(Lcom/android/internal/widget/SKYVisualBarView;I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int v0, v3, v1

    .line 105
    .local v0, shift:I
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/widget/SKYVisualBarView;->access$300(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/widget/ImageView;

    move-result-object v3

    if-ltz v0, :cond_58

    .end local v0           #shift:I
    :goto_3b
    invoke-virtual {v3, v0, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 106
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/widget/SKYVisualBarView;->access$300(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 108
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->dipToPx(I)I
    invoke-static {v4, v9}, Lcom/android/internal/widget/SKYVisualBarView;->access$200(Lcom/android/internal/widget/SKYVisualBarView;I)I

    move-result v4

    sub-int/2addr v4, v1

    if-lt v3, v4, :cond_c

    .line 113
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #setter for: Lcom/android/internal/widget/SKYVisualBarView;->mDragMode:Z
    invoke-static {v3, v2}, Lcom/android/internal/widget/SKYVisualBarView;->access$002(Lcom/android/internal/widget/SKYVisualBarView;Z)Z

    goto :goto_c

    .restart local v0       #shift:I
    :cond_58
    move v0, v2

    .line 105
    goto :goto_3b

    .line 116
    .end local v0           #shift:I
    .end local v1           #tabMargin:I
    :cond_5a
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mDensity:F
    invoke-static {v3}, Lcom/android/internal/widget/SKYVisualBarView;->access$100(Lcom/android/internal/widget/SKYVisualBarView;)F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff8

    cmpl-double v3, v3, v5

    if-nez v3, :cond_a0

    .line 119
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->dipToPx(I)I
    invoke-static {v3, v7}, Lcom/android/internal/widget/SKYVisualBarView;->access$200(Lcom/android/internal/widget/SKYVisualBarView;I)I

    move-result v1

    .line 121
    .restart local v1       #tabMargin:I
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->dipToPx(I)I
    invoke-static {v4, v8}, Lcom/android/internal/widget/SKYVisualBarView;->access$200(Lcom/android/internal/widget/SKYVisualBarView;I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int v0, v3, v1

    .line 122
    .restart local v0       #shift:I
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/widget/SKYVisualBarView;->access$300(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/widget/ImageView;

    move-result-object v3

    if-ltz v0, :cond_9e

    .end local v0           #shift:I
    :goto_80
    invoke-virtual {v3, v0, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 123
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/widget/SKYVisualBarView;->access$300(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 125
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->dipToPx(I)I
    invoke-static {v4, v9}, Lcom/android/internal/widget/SKYVisualBarView;->access$200(Lcom/android/internal/widget/SKYVisualBarView;I)I

    move-result v4

    sub-int/2addr v4, v1

    if-lt v3, v4, :cond_c

    .line 130
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #setter for: Lcom/android/internal/widget/SKYVisualBarView;->mDragMode:Z
    invoke-static {v3, v2}, Lcom/android/internal/widget/SKYVisualBarView;->access$002(Lcom/android/internal/widget/SKYVisualBarView;Z)Z

    goto/16 :goto_c

    .restart local v0       #shift:I
    :cond_9e
    move v0, v2

    .line 122
    goto :goto_80

    .line 134
    .end local v0           #shift:I
    .end local v1           #tabMargin:I
    :cond_a0
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mDensity:F
    invoke-static {v3}, Lcom/android/internal/widget/SKYVisualBarView;->access$100(Lcom/android/internal/widget/SKYVisualBarView;)F

    move-result v3

    const/high16 v4, 0x4040

    cmpl-float v3, v3, v4

    if-nez v3, :cond_c

    .line 137
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->dipToPx(I)I
    invoke-static {v3, v7}, Lcom/android/internal/widget/SKYVisualBarView;->access$200(Lcom/android/internal/widget/SKYVisualBarView;I)I

    move-result v1

    .line 139
    .restart local v1       #tabMargin:I
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->dipToPx(I)I
    invoke-static {v4, v8}, Lcom/android/internal/widget/SKYVisualBarView;->access$200(Lcom/android/internal/widget/SKYVisualBarView;I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int v0, v3, v1

    .line 140
    .restart local v0       #shift:I
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/widget/SKYVisualBarView;->access$300(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/widget/ImageView;

    move-result-object v3

    if-ltz v0, :cond_e3

    .end local v0           #shift:I
    :goto_c5
    invoke-virtual {v3, v0, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 141
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #getter for: Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/widget/SKYVisualBarView;->access$300(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 143
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #calls: Lcom/android/internal/widget/SKYVisualBarView;->dipToPx(I)I
    invoke-static {v4, v9}, Lcom/android/internal/widget/SKYVisualBarView;->access$200(Lcom/android/internal/widget/SKYVisualBarView;I)I

    move-result v4

    sub-int/2addr v4, v1

    if-lt v3, v4, :cond_c

    .line 148
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView$1;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    #setter for: Lcom/android/internal/widget/SKYVisualBarView;->mDragMode:Z
    invoke-static {v3, v2}, Lcom/android/internal/widget/SKYVisualBarView;->access$002(Lcom/android/internal/widget/SKYVisualBarView;Z)Z

    goto/16 :goto_c

    .restart local v0       #shift:I
    :cond_e3
    move v0, v2

    .line 140
    goto :goto_c5

    .line 95
    nop

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
