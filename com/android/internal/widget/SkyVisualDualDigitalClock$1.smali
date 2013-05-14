.class Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;
.super Landroid/os/Handler;
.source "SkyVisualDualDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyVisualDualDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const v8, 0x10405c1

    const/16 v7, 0xc

    .line 96
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_1da

    .line 213
    :goto_a
    return-void

    .line 100
    :sswitch_b
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$000(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 102
    .local v3, tempDate:Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 103
    .local v1, nHour:I
    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 106
    .local v2, nMin:I
    :try_start_1d
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    invoke-virtual {v4}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_135

    .line 108
    if-le v1, v7, :cond_12f

    .line 110
    add-int/lit8 v1, v1, -0xc

    .line 117
    :cond_2d
    :goto_2d
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgLocal:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :goto_35
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg1Local:Landroid/view/View;

    invoke-static {}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$100()[I

    move-result-object v5

    div-int/lit8 v6, v1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 125
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg2Local:Landroid/view/View;

    invoke-static {}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$100()[I

    move-result-object v5

    rem-int/lit8 v6, v1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg1Local:Landroid/view/View;

    invoke-static {}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$100()[I

    move-result-object v5

    div-int/lit8 v6, v2, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg2Local:Landroid/view/View;

    invoke-static {}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$100()[I

    move-result-object v5

    rem-int/lit8 v6, v2, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 130
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$000(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;
    invoke-static {v5}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$000(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)Ljava/util/Calendar;

    if-nez v4, :cond_14c

    .line 131
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgLocal:Landroid/view/View;

    const v5, 0x1080858

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_8e} :catch_13f

    .line 143
    :goto_8e
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarSeoul:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$300(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)Ljava/util/Calendar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    #calls: Lcom/android/internal/widget/SkyVisualDualDigitalClock;->getSeoulTime()J
    invoke-static {v5}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$200(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 144
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarSeoul:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$300(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 147
    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 150
    :try_start_af
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    invoke-virtual {v4}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_15e

    .line 152
    if-le v1, v7, :cond_158

    .line 154
    add-int/lit8 v1, v1, -0xc

    .line 161
    :cond_bf
    :goto_bf
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgSeoul:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :goto_c7
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg1Seoul:Landroid/view/View;

    invoke-static {}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$100()[I

    move-result-object v5

    div-int/lit8 v6, v1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 169
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg2Seoul:Landroid/view/View;

    invoke-static {}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$100()[I

    move-result-object v5

    rem-int/lit8 v6, v1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 171
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg1Seoul:Landroid/view/View;

    invoke-static {}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$100()[I

    move-result-object v5

    div-int/lit8 v6, v2, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 172
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg2Seoul:Landroid/view/View;

    invoke-static {}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$100()[I

    move-result-object v5

    rem-int/lit8 v6, v2, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 174
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarSeoul:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$300(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarSeoul:Ljava/util/Calendar;
    invoke-static {v5}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$300(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)Ljava/util/Calendar;

    if-nez v4, :cond_168

    .line 175
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgSeoul:Landroid/view/View;

    const v5, 0x1080858

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_120} :catch_122

    goto/16 :goto_a

    .line 179
    :catch_122
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    const-string v4, "SkyVisualDualDigitalClock"

    const-string v5, "Handler Exception - Just Clean"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 114
    .end local v0           #e:Ljava/lang/Exception;
    :cond_12f
    if-nez v1, :cond_2d

    .line 115
    add-int/lit8 v1, v1, 0xc

    goto/16 :goto_2d

    .line 121
    :cond_135
    :try_start_135
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgLocal:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_13d} :catch_13f

    goto/16 :goto_35

    .line 135
    :catch_13f
    move-exception v0

    .line 137
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    const-string v4, "SkyVisualDualDigitalClock"

    const-string v5, "Handler Exception - Just Clean"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8e

    .line 133
    .end local v0           #e:Ljava/lang/Exception;
    :cond_14c
    :try_start_14c
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgLocal:Landroid/view/View;

    const v5, 0x108085a

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_156} :catch_13f

    goto/16 :goto_8e

    .line 158
    :cond_158
    if-nez v1, :cond_bf

    .line 159
    add-int/lit8 v1, v1, 0xc

    goto/16 :goto_bf

    .line 165
    :cond_15e
    :try_start_15e
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgSeoul:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c7

    .line 177
    :cond_168
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgSeoul:Landroid/view/View;

    const v5, 0x108085a

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_172} :catch_122

    goto/16 :goto_a

    .line 188
    .end local v1           #nHour:I
    .end local v2           #nMin:I
    .end local v3           #tempDate:Ljava/util/Date;
    :sswitch_174
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    invoke-virtual {v5}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateFormatString:Ljava/lang/String;

    .line 191
    :try_start_182
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateTextViewLocal:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v5, v5, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateFormatString:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;
    invoke-static {v6}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$000(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_19b} :catch_1cd

    .line 199
    :goto_19b
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    invoke-virtual {v5}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateFormatString:Ljava/lang/String;

    .line 202
    :try_start_1a9
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateTextViewSeoul:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iget-object v5, v5, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateFormatString:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    #calls: Lcom/android/internal/widget/SkyVisualDualDigitalClock;->getSeoulTime()J
    invoke-static {v6}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->access$200(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1be} :catch_1c0

    goto/16 :goto_a

    .line 204
    :catch_1c0
    move-exception v0

    .line 206
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    const-string v4, "SkyVisualDualDigitalClock"

    const-string v5, "Handler Exception - Just Clean"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 193
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1cd
    move-exception v0

    .line 195
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    const-string v4, "SkyVisualDualDigitalClock"

    const-string v5, "Handler Exception - Just Clean"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19b

    .line 96
    nop

    :sswitch_data_1da
    .sparse-switch
        0x2c9 -> :sswitch_b
        0x38f -> :sswitch_174
    .end sparse-switch
.end method
