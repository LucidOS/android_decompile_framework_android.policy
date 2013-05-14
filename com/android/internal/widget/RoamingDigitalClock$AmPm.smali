.class Lcom/android/internal/widget/RoamingDigitalClock$AmPm;
.super Ljava/lang/Object;
.source "RoamingDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RoamingDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;)V
    .registers 5
    .parameter "parent"
    .parameter "tf"

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    if-eqz p2, :cond_e

    .line 133
    iget-object v1, p0, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    :cond_e
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .line 138
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    .line 139
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .registers 4
    .parameter "isMorning"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 149
    iget-object v1, p0, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_d
    return-void

    .line 149
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_a
.end method

.method setShowAmPm(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 143
    iget-object v1, p0, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :cond_c
    return-void

    .line 143
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method
