.class Lcom/android/internal/widget/SkyVisualDigitalClock$1;
.super Landroid/os/Handler;
.source "SkyVisualDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyVisualDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkyVisualDigitalClock;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    .line 81
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_e8

    .line 142
    :goto_5
    return-void

    .line 84
    :sswitch_6
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/internal/widget/SkyVisualDigitalClock;->access$000(Lcom/android/internal/widget/SkyVisualDigitalClock;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 86
    .local v3, tempDate:Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 87
    .local v1, nHour:I
    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 90
    .local v2, nMin:I
    :try_start_18
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    invoke-virtual {v4}, Lcom/android/internal/widget/SkyVisualDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9c

    .line 92
    const/16 v4, 0xc

    if-le v1, v4, :cond_97

    .line 94
    add-int/lit8 v1, v1, -0xc

    .line 101
    :cond_2a
    :goto_2a
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDigitalClock;->mAMPMImg:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :goto_32
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDigitalClock;->mHourDigitImg1:Landroid/view/View;

    invoke-static {}, Lcom/android/internal/widget/SkyVisualDigitalClock;->access$100()[I

    move-result-object v5

    div-int/lit8 v6, v1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 109
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDigitalClock;->mHourDigitImg2:Landroid/view/View;

    invoke-static {}, Lcom/android/internal/widget/SkyVisualDigitalClock;->access$100()[I

    move-result-object v5

    rem-int/lit8 v6, v1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 111
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDigitalClock;->mMinDigitImg1:Landroid/view/View;

    invoke-static {}, Lcom/android/internal/widget/SkyVisualDigitalClock;->access$100()[I

    move-result-object v5

    div-int/lit8 v6, v2, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDigitalClock;->mMinDigitImg2:Landroid/view/View;

    invoke-static {}, Lcom/android/internal/widget/SkyVisualDigitalClock;->access$100()[I

    move-result-object v5

    rem-int/lit8 v6, v2, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/internal/widget/SkyVisualDigitalClock;->access$000(Lcom/android/internal/widget/SkyVisualDigitalClock;)Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v5}, Lcom/android/internal/widget/SkyVisualDigitalClock;->access$000(Lcom/android/internal/widget/SkyVisualDigitalClock;)Ljava/util/Calendar;

    if-nez v4, :cond_a5

    .line 115
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDigitalClock;->mAMPMImg:Landroid/view/View;

    const v5, 0x1080865

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_8b} :catch_8d

    goto/16 :goto_5

    .line 119
    :catch_8d
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SkyVisualDigitalClock"

    const-string v5, "Handler Exception - Just Clean"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 98
    .end local v0           #e:Ljava/lang/Exception;
    :cond_97
    if-nez v1, :cond_2a

    .line 99
    add-int/lit8 v1, v1, 0xc

    goto :goto_2a

    .line 105
    :cond_9c
    :try_start_9c
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDigitalClock;->mAMPMImg:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_32

    .line 117
    :cond_a5
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDigitalClock;->mAMPMImg:Landroid/view/View;

    const v5, 0x1080867

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_af} :catch_8d

    goto/16 :goto_5

    .line 128
    .end local v1           #nHour:I
    .end local v2           #nMin:I
    .end local v3           #tempDate:Ljava/util/Date;
    :sswitch_b1
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    invoke-virtual {v5}, Lcom/android/internal/widget/SkyVisualDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10405c1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/widget/SkyVisualDigitalClock;->mDateFormatString:Ljava/lang/String;

    .line 131
    :try_start_c2
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    iget-object v4, v4, Lcom/android/internal/widget/SkyVisualDigitalClock;->mDateTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    iget-object v5, v5, Lcom/android/internal/widget/SkyVisualDigitalClock;->mDateFormatString:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;->this$0:Lcom/android/internal/widget/SkyVisualDigitalClock;

    #getter for: Lcom/android/internal/widget/SkyVisualDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v6}, Lcom/android/internal/widget/SkyVisualDigitalClock;->access$000(Lcom/android/internal/widget/SkyVisualDigitalClock;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_db} :catch_dd

    goto/16 :goto_5

    .line 133
    :catch_dd
    move-exception v0

    .line 136
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "SkyVisualDigitalClock"

    const-string v5, "Handler Exception - Just Clean"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 81
    nop

    :sswitch_data_e8
    .sparse-switch
        0x2c9 -> :sswitch_6
        0x38f -> :sswitch_b1
    .end sparse-switch
.end method
