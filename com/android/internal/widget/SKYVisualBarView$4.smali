.class Lcom/android/internal/widget/SKYVisualBarView$4;
.super Ljava/lang/Object;
.source "SKYVisualBarView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SKYVisualBarView;->initViews()V
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
    .line 345
    iput-object p1, p0, Lcom/android/internal/widget/SKYVisualBarView$4;->this$0:Lcom/android/internal/widget/SKYVisualBarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter "v"

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method
