.class Lcom/android/internal/policy/impl/SkFotaService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SkFotaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SkFotaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SkFotaService;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SkFotaService;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkFotaService$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/SkFotaService;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkFotaService$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/SkFotaService;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SkFotaService;->update()V

    .line 77
    return-void
.end method
