.class Lcom/android/internal/widget/CustomGestureListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SkyGestureSlideContentsView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/pantech/providers/skysettings/SKYGestureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private gesture_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/providers/skysettings/SKYGestureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/providers/skysettings/SKYGestureInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/pantech/providers/skysettings/SKYGestureInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 227
    check-cast p3, Ljava/util/ArrayList;

    .end local p3           #objects:Ljava/util/List;,"Ljava/util/List<Lcom/pantech/providers/skysettings/SKYGestureInfo;>;"
    iput-object p3, p0, Lcom/android/internal/widget/CustomGestureListAdapter;->gesture_list:Ljava/util/ArrayList;

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/CustomGestureListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/CustomGestureListAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 231
    return-void
.end method


# virtual methods
.method public destory()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/android/internal/widget/CustomGestureListAdapter;->gesture_list:Ljava/util/ArrayList;

    .line 282
    iput-object v0, p0, Lcom/android/internal/widget/CustomGestureListAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 283
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 234
    move-object/from16 v12, p2

    .line 236
    .local v12, v:Landroid/view/View;
    if-nez v12, :cond_18

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/widget/CustomGestureListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 238
    .local v13, vi:Landroid/view/LayoutInflater;
    const v0, 0x10900d4

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 241
    .end local v13           #vi:Landroid/view/LayoutInflater;
    :cond_18
    iget-object v0, p0, Lcom/android/internal/widget/CustomGestureListAdapter;->gesture_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/providers/skysettings/SKYGestureInfo;

    .line 243
    .local v6, gInfo:Lcom/pantech/providers/skysettings/SKYGestureInfo;
    const v0, 0x10203ce

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 244
    .local v10, textTitle:Landroid/widget/TextView;
    iget-object v0, v6, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :try_start_2e
    iget-object v11, v6, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mTitle:Ljava/lang/String;

    .line 249
    .local v11, tmpSubTitle:Ljava/lang/String;
    if-eqz v11, :cond_50

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_50

    .line 251
    iget-object v0, v6, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mIntentURI:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 252
    .local v8, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/widget/CustomGestureListAdapter;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x4000

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/internal/widget/CustomGestureListAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .end local v11           #tmpSubTitle:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 255
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v11       #tmpSubTitle:Ljava/lang/String;
    :cond_50
    const v0, 0x10203cf

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 256
    .local v9, textSub:Landroid/widget/TextView;
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_5c} :catch_76

    .line 260
    .end local v9           #textSub:Landroid/widget/TextView;
    .end local v11           #tmpSubTitle:Ljava/lang/String;
    :goto_5c
    const v0, 0x10203d0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 270
    .local v7, imgThumbnail:Landroid/widget/ImageView;
    iget-object v0, v6, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mGesture:Landroid/gesture/Gesture;

    const/16 v1, 0x41

    const/16 v2, 0x41

    const/4 v3, 0x5

    const/4 v4, -0x1

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/gesture/Gesture;->toBitmap_sky(IIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    return-object v12

    .line 257
    .end local v7           #imgThumbnail:Landroid/widget/ImageView;
    :catch_76
    move-exception v0

    goto :goto_5c
.end method
