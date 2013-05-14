.class Lcom/android/internal/widget/SkyGestureSubInfoView$2;
.super Ljava/lang/Object;
.source "SkyGestureSubInfoView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SkyGestureSubInfoView;->createSubView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SkyGestureSubInfoView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkyGestureSubInfoView;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/widget/SkyGestureSubInfoView$2;->this$0:Lcom/android/internal/widget/SkyGestureSubInfoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 88
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 84
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 74
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 75
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView$2;->this$0:Lcom/android/internal/widget/SkyGestureSubInfoView;

    #getter for: Lcom/android/internal/widget/SkyGestureSubInfoView;->mAnswerView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSubInfoView;->access$200(Lcom/android/internal/widget/SkyGestureSubInfoView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_14
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView$2;->this$0:Lcom/android/internal/widget/SkyGestureSubInfoView;

    #calls: Lcom/android/internal/widget/SkyGestureSubInfoView;->showSubInfoView()V
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSubInfoView;->access$100(Lcom/android/internal/widget/SkyGestureSubInfoView;)V

    .line 80
    return-void

    .line 77
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView$2;->this$0:Lcom/android/internal/widget/SkyGestureSubInfoView;

    #getter for: Lcom/android/internal/widget/SkyGestureSubInfoView;->mAnswerView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSubInfoView;->access$200(Lcom/android/internal/widget/SkyGestureSubInfoView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10806d9

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_14
.end method
