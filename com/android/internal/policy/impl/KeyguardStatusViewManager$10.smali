.class synthetic Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$IccCard$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 801
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->values()[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_125

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimSimLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_122

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_11f

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_11c

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_119

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_116

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_113

    :goto_56
    :try_start_56
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimIOError:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_110

    :goto_62
    :try_start_62
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimEmptySKT:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_10d

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPersoBlocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_10a

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimRemoved:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_107

    .line 716
    :goto_86
    invoke-static {}, Lcom/android/internal/telephony/IccCard$State;->values()[Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    :try_start_8f
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_9a} :catch_105

    :goto_9a
    :try_start_9a
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_a5} :catch_103

    :goto_a5
    :try_start_a5
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_b0} :catch_101

    :goto_b0
    :try_start_b0
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_bb} :catch_ff

    :goto_bb
    :try_start_bb
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c6} :catch_fd

    :goto_c6
    :try_start_c6
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d1} :catch_fb

    :goto_d1
    :try_start_d1
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_dc} :catch_f9

    :goto_dc
    :try_start_dc
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_e8} :catch_f7

    :goto_e8
    :try_start_e8
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$10;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_f4} :catch_f5

    :goto_f4
    return-void

    :catch_f5
    move-exception v0

    goto :goto_f4

    :catch_f7
    move-exception v0

    goto :goto_e8

    :catch_f9
    move-exception v0

    goto :goto_dc

    :catch_fb
    move-exception v0

    goto :goto_d1

    :catch_fd
    move-exception v0

    goto :goto_c6

    :catch_ff
    move-exception v0

    goto :goto_bb

    :catch_101
    move-exception v0

    goto :goto_b0

    :catch_103
    move-exception v0

    goto :goto_a5

    :catch_105
    move-exception v0

    goto :goto_9a

    .line 801
    :catch_107
    move-exception v0

    goto/16 :goto_86

    :catch_10a
    move-exception v0

    goto/16 :goto_7a

    :catch_10d
    move-exception v0

    goto/16 :goto_6e

    :catch_110
    move-exception v0

    goto/16 :goto_62

    :catch_113
    move-exception v0

    goto/16 :goto_56

    :catch_116
    move-exception v0

    goto/16 :goto_4b

    :catch_119
    move-exception v0

    goto/16 :goto_40

    :catch_11c
    move-exception v0

    goto/16 :goto_35

    :catch_11f
    move-exception v0

    goto/16 :goto_2a

    :catch_122
    move-exception v0

    goto/16 :goto_1f

    :catch_125
    move-exception v0

    goto/16 :goto_14
.end method
