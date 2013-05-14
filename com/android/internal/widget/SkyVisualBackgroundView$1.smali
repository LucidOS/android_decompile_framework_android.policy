.class Lcom/android/internal/widget/SkyVisualBackgroundView$1;
.super Ljava/lang/Object;
.source "SkyVisualBackgroundView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyVisualBackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SkyVisualBackgroundView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkyVisualBackgroundView;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualBackgroundView$1;->this$0:Lcom/android/internal/widget/SkyVisualBackgroundView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView$1;->this$0:Lcom/android/internal/widget/SkyVisualBackgroundView;

    #calls: Lcom/android/internal/widget/SkyVisualBackgroundView;->fillImage()V
    invoke-static {v0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->access$000(Lcom/android/internal/widget/SkyVisualBackgroundView;)V

    .line 209
    return-void
.end method
