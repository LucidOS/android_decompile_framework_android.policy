.class public Lcom/android/internal/widget/SkyVisualBackgroundView$FileDecodeFailedException;
.super Ljava/lang/Exception;
.source "SkyVisualBackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyVisualBackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDecodeFailedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2d141f38d59dff13L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 877
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 878
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 881
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 882
    return-void
.end method
