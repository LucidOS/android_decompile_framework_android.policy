.class Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;
.super Ljava/lang/Object;
.source "SkySimpleDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkySimpleDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;)V
    .registers 6
    .parameter "parent"
    .parameter "tf"

    .prologue
    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const v1, 0x1020308

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mLocale:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2d

    if-eqz p2, :cond_2d

    .line 133
    iget-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    :cond_2d
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .line 138
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mLocale:Ljava/lang/String;

    const-string v2, "Portugal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 142
    const-string v1, "AM"

    iput-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .line 143
    const-string v1, "PM"

    iput-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    .line 145
    :cond_52
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .registers 4
    .parameter "isMorning"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 155
    iget-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_d
    return-void

    .line 155
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_a
.end method

.method setShowAmPm(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 149
    iget-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :cond_c
    return-void

    .line 149
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method
