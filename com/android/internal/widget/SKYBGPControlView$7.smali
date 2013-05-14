.class Lcom/android/internal/widget/SKYBGPControlView$7;
.super Ljava/lang/Object;
.source "SKYBGPControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SKYBGPControlView;->createSubView()V
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
    .line 423
    iput-object p1, p0, Lcom/android/internal/widget/SKYBGPControlView$7;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$7;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    const-string v1, "togglepause"

    #calls: Lcom/android/internal/widget/SKYBGPControlView;->sendCommand(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$500(Lcom/android/internal/widget/SKYBGPControlView;Ljava/lang/String;)V

    .line 428
    return-void
.end method
