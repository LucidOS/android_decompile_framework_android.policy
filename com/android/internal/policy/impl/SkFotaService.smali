.class public Lcom/android/internal/policy/impl/SkFotaService;
.super Ljava/lang/Object;
.source "SkFotaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SkFotaService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SkFotaService"


# instance fields
.field private mCameraOn:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Lcom/android/internal/policy/impl/SkFotaService$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v3, p0, Lcom/android/internal/policy/impl/SkFotaService;->mCameraOn:I

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkFotaService;->mHandler:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkFotaService;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/android/internal/policy/impl/SkFotaService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/SkFotaService$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/SkFotaService;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkFotaService;->mObserver:Lcom/android/internal/policy/impl/SkFotaService$SettingsObserver;

    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkFotaService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkFotaService;->mContentResolver:Landroid/content/ContentResolver;

    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkFotaService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkFotaService;->mObserver:Lcom/android/internal/policy/impl/SkFotaService$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkFotaService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/skfota/SkFotaWriter;->restoreScreenLockStateFromStorage(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkFotaService;->update()V

    .line 48
    return-void
.end method


# virtual methods
.method public update()V
    .registers 4

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkFotaService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_on"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/SkFotaService;->mCameraOn:I

    .line 56
    iget v1, p0, Lcom/android/internal/policy/impl/SkFotaService;->mCameraOn:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/skfota/SkFotaWriter;->setFotaCameraOn(Ljava/lang/String;)Z
    :try_end_17
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_17} :catch_18

    .line 63
    :goto_17
    return-void

    .line 58
    :catch_18
    move-exception v0

    .line 59
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 60
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/SkFotaService;->mCameraOn:I

    .line 61
    iget v1, p0, Lcom/android/internal/policy/impl/SkFotaService;->mCameraOn:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/skfota/SkFotaWriter;->setFotaCameraOn(Ljava/lang/String;)Z

    goto :goto_17
.end method
