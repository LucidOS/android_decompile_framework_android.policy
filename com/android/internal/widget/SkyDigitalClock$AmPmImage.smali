.class public Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;
.super Ljava/lang/Object;
.source "SkyDigitalClock.java"

# interfaces
.implements Lcom/android/internal/widget/SkyDigitalClock$AmPm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AmPmImage"
.end annotation


# instance fields
.field private mAmImg:Landroid/graphics/drawable/Drawable;

.field private mAmPmImageView:Landroid/widget/ImageView;

.field private mParent:Landroid/view/View;

.field private mPmImg:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 5
    .parameter "parent"

    .prologue
    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;->mParent:Landroid/view/View;

    .line 179
    const v1, 0x1020308

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, o:Landroid/view/View;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 181
    check-cast v0, Landroid/widget/ImageView;

    .end local v0           #o:Landroid/view/View;
    iput-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;->mAmPmImageView:Landroid/widget/ImageView;

    .line 183
    :cond_1c
    return-void
.end method


# virtual methods
.method public loadAmPmResource()V
    .registers 1

    .prologue
    .line 196
    return-void
.end method

.method public setAmPmResource(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "amResource"
    .parameter "pmResource"

    .prologue
    .line 199
    instance-of v0, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 200
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;->mAmImg:Landroid/graphics/drawable/Drawable;

    .line 205
    :goto_8
    instance-of v0, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    .line 206
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .end local p2
    iput-object p2, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;->mPmImg:Landroid/graphics/drawable/Drawable;

    .line 210
    :goto_10
    return-void

    .line 202
    .restart local p1
    .restart local p2
    :cond_11
    const-string v0, "SkyDigitalClock"

    const-string v1, "amResource is not Drawable type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 208
    .end local p1
    :cond_19
    const-string v0, "SkyDigitalClock"

    const-string v1, "pmResource is not Drawable type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public setIsMorning(Z)V
    .registers 4
    .parameter "isMorning"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;->mAmImg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;->mPmImg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 191
    :cond_8
    iget-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;->mAmPmImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;->mAmImg:Landroid/graphics/drawable/Drawable;

    :goto_e
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :cond_11
    return-void

    .line 191
    :cond_12
    iget-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;->mPmImg:Landroid/graphics/drawable/Drawable;

    goto :goto_e
.end method

.method public setShowAmPm(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;->mAmPmImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    return-void

    .line 186
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method
