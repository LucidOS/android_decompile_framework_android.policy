.class Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;
.super Ljava/lang/Object;
.source "SkyRoamingDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyRoamingDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPmTag:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;I)V
    .registers 5
    .parameter "parent"
    .parameter "tf"
    .parameter "resId"

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->mAmPmTag:Landroid/widget/TextView;

    .line 124
    if-eqz p2, :cond_12

    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->mAmPmTag:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->resetAmPmString()V

    .line 129
    return-void
.end method


# virtual methods
.method resetAmPmString()V
    .registers 3

    .prologue
    .line 141
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .line 143
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    .line 145
    return-void
.end method

.method setIsMorning(Z)V
    .registers 4
    .parameter "isMorning"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->mAmPmTag:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void

    .line 136
    :cond_a
    iget-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_6
.end method

.method setShowAmPm(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->mAmPmTag:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    return-void

    .line 132
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method
