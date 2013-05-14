.class public Lcom/android/internal/widget/SkyDigitalClock$AmPmString;
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
    name = "AmPmString"
.end annotation


# instance fields
.field private mAmPmTag:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;)V
    .registers 6
    .parameter "parent"
    .parameter "tf"

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const v1, 0x1020308

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, o:Landroid/view/View;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 133
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #o:Landroid/view/View;
    iput-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmString;->mAmPmTag:Landroid/widget/TextView;

    .line 139
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClock$AmPmString;->loadAmPmResource()V

    .line 140
    return-void
.end method


# virtual methods
.method public loadAmPmResource()V
    .registers 3

    .prologue
    .line 151
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmString;->mAmString:Ljava/lang/String;

    .line 153
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmString;->mPmString:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setAmPmResource(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter "amResource"
    .parameter "pmResource"

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, p1

    .line 160
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmString;->mAmString:Ljava/lang/String;

    .line 163
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 164
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmString;->mPmString:Ljava/lang/String;

    .line 166
    :cond_21
    return-void
.end method

.method public setIsMorning(Z)V
    .registers 4
    .parameter "isMorning"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmString;->mAmPmTag:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmString;->mAmString:Ljava/lang/String;

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void

    .line 147
    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmString;->mPmString:Ljava/lang/String;

    goto :goto_6
.end method

.method public setShowAmPm(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock$AmPmString;->mAmPmTag:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    return-void

    .line 143
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method
