.class public final Lcom/apk/kq0;
.super Ljava/lang/Object;
.source "SkinCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/kq0$do;,
        Lcom/apk/kq0$new;,
        Lcom/apk/kq0$if;,
        Lcom/apk/kq0$for;
    }
.end annotation


# static fields
.field public static final break:Lcom/apk/kq0$if;

.field public static final catch:[I

.field public static final class:[I

.field public static final const:[I

.field public static final final:[I

.field public static final goto:Landroid/graphics/PorterDuff$Mode;

.field public static final super:[I

.field public static this:Lcom/apk/kq0;

.field public static final throw:[I


# instance fields
.field public case:Landroid/util/TypedValue;

.field public do:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field public else:Z

.field public for:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public if:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/apk/kq0$for;",
            ">;"
        }
    .end annotation
.end field

.field public final new:Ljava/lang/Object;

.field public final try:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/apk/kq0;->goto:Landroid/graphics/PorterDuff$Mode;

    .line 2
    new-instance v0, Lcom/apk/kq0$if;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/apk/kq0$if;-><init>(I)V

    sput-object v0, Lcom/apk/kq0;->break:Lcom/apk/kq0$if;

    const/4 v0, 0x3

    new-array v2, v0, [I

    .line 3
    sget v3, Landroidx/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Landroidx/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Landroidx/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    const/4 v6, 0x2

    aput v3, v2, v6

    sput-object v2, Lcom/apk/kq0;->catch:[I

    const/4 v2, 0x7

    new-array v3, v2, [I

    .line 4
    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Landroidx/appcompat/R$drawable;->abc_seekbar_tick_mark_material:I

    aput v7, v3, v5

    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v7, v3, v0

    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v8, 0x4

    aput v7, v3, v8

    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    const/4 v9, 0x5

    aput v7, v3, v9

    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v7, v3, v1

    sput-object v3, Lcom/apk/kq0;->class:[I

    const/16 v3, 0xa

    new-array v3, v3, [I

    .line 5
    sget v7, Landroidx/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Landroidx/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v7, v3, v5

    sget v7, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Landroidx/appcompat/R$drawable;->abc_text_cursor_material:I

    aput v7, v3, v0

    sget v7, Landroidx/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_dark:I

    aput v7, v3, v8

    sget v7, Landroidx/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_dark:I

    aput v7, v3, v9

    sget v7, Landroidx/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_dark:I

    aput v7, v3, v1

    sget v1, Landroidx/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_light:I

    aput v1, v3, v2

    sget v1, Landroidx/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_light:I

    const/16 v2, 0x8

    aput v1, v3, v2

    sget v1, Landroidx/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_light:I

    const/16 v2, 0x9

    aput v1, v3, v2

    sput-object v3, Lcom/apk/kq0;->const:[I

    new-array v0, v0, [I

    .line 6
    sget v1, Landroidx/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v4

    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    aput v1, v0, v5

    sget v1, Landroidx/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v6

    sput-object v0, Lcom/apk/kq0;->final:[I

    new-array v0, v6, [I

    .line 7
    sget v1, Landroidx/appcompat/R$drawable;->abc_tab_indicator_material:I

    aput v1, v0, v4

    sget v1, Landroidx/appcompat/R$drawable;->abc_textfield_search_material:I

    aput v1, v0, v5

    sput-object v0, Lcom/apk/kq0;->super:[I

    new-array v0, v6, [I

    .line 8
    sget v1, Landroidx/appcompat/R$drawable;->abc_btn_check_material:I

    aput v1, v0, v4

    sget v1, Landroidx/appcompat/R$drawable;->abc_btn_radio_material:I

    aput v1, v0, v5

    sput-object v0, Lcom/apk/kq0;->throw:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/apk/kq0;->new:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/apk/kq0;->try:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static else(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 4

    .line 1
    sget-object v0, Lcom/apk/kq0;->break:Lcom/apk/kq0$if;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    add-int/lit8 v2, p0, 0x1f

    mul-int/lit8 v2, v2, 0x1f

    .line 2
    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5
    sget-object p0, Lcom/apk/kq0;->break:Lcom/apk/kq0$if;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result p1

    add-int/2addr p1, v2

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    .line 8
    :cond_0
    throw v1

    :cond_1
    :goto_0
    return-object v0

    .line 9
    :cond_2
    throw v1
.end method

.method public static goto(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/apk/sb0;->final(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 3
    sget-object p2, Lcom/apk/kq0;->goto:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    invoke-static {p1, p2}, Lcom/apk/kq0;->else(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static if([II)Z
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static new()Lcom/apk/kq0;
    .locals 4

    .line 1
    sget-object v0, Lcom/apk/kq0;->this:Lcom/apk/kq0;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcom/apk/kq0;

    invoke-direct {v0}, Lcom/apk/kq0;-><init>()V

    sput-object v0, Lcom/apk/kq0;->this:Lcom/apk/kq0;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_2

    .line 4
    new-instance v1, Lcom/apk/kq0$new;

    invoke-direct {v1}, Lcom/apk/kq0$new;-><init>()V

    .line 5
    iget-object v2, v0, Lcom/apk/kq0;->if:Landroidx/collection/ArrayMap;

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/apk/kq0;->if:Landroidx/collection/ArrayMap;

    .line 7
    :cond_0
    iget-object v2, v0, Lcom/apk/kq0;->if:Landroidx/collection/ArrayMap;

    const-string v3, "vector"

    invoke-virtual {v2, v3, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/apk/kq0$do;

    invoke-direct {v1}, Lcom/apk/kq0$do;-><init>()V

    .line 9
    iget-object v2, v0, Lcom/apk/kq0;->if:Landroidx/collection/ArrayMap;

    if-nez v2, :cond_1

    .line 10
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/apk/kq0;->if:Landroidx/collection/ArrayMap;

    .line 11
    :cond_1
    iget-object v0, v0, Lcom/apk/kq0;->if:Landroidx/collection/ArrayMap;

    const-string v2, "animated-vector"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    sget-object v0, Lcom/apk/kq0;->this:Lcom/apk/kq0;

    return-object v0
.end method


# virtual methods
.method public case(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "android.graphics.drawable.VectorDrawable"

    .line 1
    iget-boolean v4, v0, Lcom/apk/kq0;->else:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iput-boolean v5, v0, Lcom/apk/kq0;->else:Z

    .line 3
    sget v4, Landroidx/appcompat/R$drawable;->abc_vector_test:I

    invoke-virtual {v0, v1, v4}, Lcom/apk/kq0;->case(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 4
    instance-of v7, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-nez v7, :cond_2

    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_37

    .line 6
    :goto_2
    iget-object v4, v0, Lcom/apk/kq0;->if:Landroidx/collection/ArrayMap;

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 7
    iget-object v4, v0, Lcom/apk/kq0;->for:Landroid/util/SparseArray;

    const-string v10, "appcompat_skip_skip"

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    if-eqz v4, :cond_4

    iget-object v11, v0, Lcom/apk/kq0;->if:Landroidx/collection/ArrayMap;

    .line 10
    invoke-virtual {v11, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    goto/16 :goto_6

    .line 11
    :cond_3
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/apk/kq0;->for:Landroid/util/SparseArray;

    .line 12
    :cond_4
    iget-object v4, v0, Lcom/apk/kq0;->case:Landroid/util/TypedValue;

    if-nez v4, :cond_5

    .line 13
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iput-object v4, v0, Lcom/apk/kq0;->case:Landroid/util/TypedValue;

    .line 14
    :cond_5
    iget-object v4, v0, Lcom/apk/kq0;->case:Landroid/util/TypedValue;

    .line 15
    invoke-static {v1, v2, v4, v5}, Lcom/apk/lq0;->case(Landroid/content/Context;ILandroid/util/TypedValue;Z)V

    .line 16
    iget v11, v4, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v11, v11

    shl-long/2addr v11, v7

    iget v13, v4, Landroid/util/TypedValue;->data:I

    int-to-long v13, v13

    or-long/2addr v11, v13

    .line 17
    invoke-virtual {v0, v1, v11, v12}, Lcom/apk/kq0;->try(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_6

    goto/16 :goto_7

    .line 18
    :cond_6
    iget-object v14, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v14, :cond_b

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 19
    :try_start_0
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object v14

    .line 20
    iget-boolean v15, v14, Lcom/apk/lq0;->try:Z

    if-nez v15, :cond_7

    .line 21
    invoke-virtual {v14, v1, v2}, Lcom/apk/lq0;->try(Landroid/content/Context;I)I

    move-result v15

    if-eqz v15, :cond_7

    .line 22
    iget-object v14, v14, Lcom/apk/lq0;->do:Landroid/content/res/Resources;

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    goto :goto_3

    .line 23
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 24
    :goto_3
    invoke-static {v14}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v15

    .line 25
    :goto_4
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v9, :cond_8

    if-eq v6, v5, :cond_8

    goto :goto_4

    :cond_8
    if-ne v6, v9, :cond_a

    .line 26
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 27
    iget-object v9, v0, Lcom/apk/kq0;->for:Landroid/util/SparseArray;

    invoke-virtual {v9, v2, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 28
    iget-object v9, v0, Lcom/apk/kq0;->if:Landroidx/collection/ArrayMap;

    invoke-virtual {v9, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apk/kq0$for;

    if-eqz v6, :cond_9

    .line 29
    invoke-interface {v6, v1, v14, v15, v8}, Lcom/apk/kq0$for;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    :cond_9
    if-eqz v13, :cond_b

    .line 30
    iget v4, v4, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v13, v4}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 31
    invoke-virtual {v0, v1, v11, v12, v13}, Lcom/apk/kq0;->do(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_5

    :catch_0
    nop

    goto :goto_5

    .line 32
    :cond_a
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "No start tag found"

    invoke-direct {v4, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_5
    if-nez v13, :cond_d

    .line 33
    iget-object v4, v0, Lcom/apk/kq0;->for:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_7

    :cond_c
    :goto_6
    move-object v13, v8

    :cond_d
    :goto_7
    if-nez v13, :cond_12

    .line 34
    iget-object v4, v0, Lcom/apk/kq0;->case:Landroid/util/TypedValue;

    if-nez v4, :cond_e

    .line 35
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iput-object v4, v0, Lcom/apk/kq0;->case:Landroid/util/TypedValue;

    .line 36
    :cond_e
    iget-object v4, v0, Lcom/apk/kq0;->case:Landroid/util/TypedValue;

    .line 37
    invoke-static {v1, v2, v4, v5}, Lcom/apk/lq0;->case(Landroid/content/Context;ILandroid/util/TypedValue;Z)V

    .line 38
    iget v6, v4, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v9, v6

    shl-long v6, v9, v7

    iget v9, v4, Landroid/util/TypedValue;->data:I

    int-to-long v9, v9

    or-long/2addr v6, v9

    .line 39
    invoke-virtual {v0, v1, v6, v7}, Lcom/apk/kq0;->try(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_10

    :cond_f
    :goto_8
    move-object v13, v9

    goto :goto_9

    .line 40
    :cond_10
    sget v10, Landroidx/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne v2, v10, :cond_11

    .line 41
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    const/4 v10, 0x2

    new-array v11, v10, [Landroid/graphics/drawable/Drawable;

    sget v10, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    .line 42
    invoke-virtual {v0, v1, v10}, Lcom/apk/kq0;->case(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    sget v10, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 43
    invoke-virtual {v0, v1, v10}, Lcom/apk/kq0;->case(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v11, v5

    invoke-direct {v9, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :cond_11
    if-eqz v9, :cond_f

    .line 44
    iget v4, v4, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v9, v4}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 45
    invoke-virtual {v0, v1, v6, v7, v9}, Lcom/apk/kq0;->do(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_8

    :cond_12
    :goto_9
    if-nez v13, :cond_13

    .line 46
    invoke-static/range {p1 .. p2}, Lcom/apk/lq0;->for(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    :cond_13
    if-eqz v13, :cond_33

    .line 47
    iget-object v4, v0, Lcom/apk/kq0;->do:Ljava/util/WeakHashMap;

    if-eqz v4, :cond_14

    .line 48
    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    if-eqz v4, :cond_14

    .line 49
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ColorStateList;

    goto :goto_a

    :cond_14
    move-object v4, v8

    :goto_a
    if-nez v4, :cond_24

    .line 50
    sget v6, Landroidx/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne v2, v6, :cond_15

    .line 51
    sget v4, Landroidx/appcompat/R$color;->abc_tint_edittext:I

    invoke-static {v1, v4}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto/16 :goto_d

    .line 52
    :cond_15
    sget v6, Landroidx/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne v2, v6, :cond_16

    .line 53
    sget v4, Landroidx/appcompat/R$color;->abc_tint_switch_track:I

    invoke-static {v1, v4}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto/16 :goto_d

    .line 54
    :cond_16
    sget v6, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne v2, v6, :cond_18

    const/4 v4, 0x3

    new-array v6, v4, [[I

    new-array v4, v4, [I

    .line 55
    sget v7, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v1, v7}, Lcom/apk/mq0;->try(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 56
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 57
    sget-object v9, Lcom/apk/mq0;->if:[I

    const/4 v10, 0x0

    aput-object v9, v6, v10

    .line 58
    aget-object v9, v6, v10

    invoke-virtual {v7, v9, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    aput v9, v4, v10

    .line 59
    sget-object v9, Lcom/apk/mq0;->class:[I

    aput-object v9, v6, v5

    .line 60
    sget v9, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v1, v9}, Lcom/apk/mq0;->new(Landroid/content/Context;I)I

    move-result v9

    aput v9, v4, v5

    .line 61
    sget-object v9, Lcom/apk/mq0;->final:[I

    const/4 v10, 0x2

    aput-object v9, v6, v10

    .line 62
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    aput v7, v4, v10

    goto :goto_b

    .line 63
    :cond_17
    sget-object v7, Lcom/apk/mq0;->if:[I

    const/4 v9, 0x0

    aput-object v7, v6, v9

    .line 64
    sget v7, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v1, v7}, Lcom/apk/mq0;->do(Landroid/content/Context;I)I

    move-result v7

    aput v7, v4, v9

    .line 65
    sget-object v7, Lcom/apk/mq0;->class:[I

    aput-object v7, v6, v5

    .line 66
    sget v7, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {v1, v7}, Lcom/apk/mq0;->new(Landroid/content/Context;I)I

    move-result v7

    aput v7, v4, v5

    .line 67
    sget-object v7, Lcom/apk/mq0;->final:[I

    const/4 v9, 0x2

    aput-object v7, v6, v9

    .line 68
    sget v7, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {v1, v7}, Lcom/apk/mq0;->new(Landroid/content/Context;I)I

    move-result v7

    aput v7, v4, v9

    .line 69
    :goto_b
    new-instance v7, Landroid/content/res/ColorStateList;

    invoke-direct {v7, v6, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v4, v7

    goto/16 :goto_d

    .line 70
    :cond_18
    sget v6, Landroidx/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne v2, v6, :cond_19

    .line 71
    sget v4, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    .line 72
    invoke-static {v1, v4}, Lcom/apk/mq0;->new(Landroid/content/Context;I)I

    move-result v4

    .line 73
    invoke-virtual {v0, v1, v4}, Lcom/apk/kq0;->for(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_d

    .line 74
    :cond_19
    sget v6, Landroidx/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne v2, v6, :cond_1a

    const/4 v6, 0x0

    .line 75
    invoke-virtual {v0, v1, v6}, Lcom/apk/kq0;->for(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_d

    .line 76
    :cond_1a
    sget v6, Landroidx/appcompat/R$drawable;->abc_btn_colored_material:I

    if-ne v2, v6, :cond_1b

    .line 77
    sget v4, Landroidx/appcompat/R$attr;->colorAccent:I

    .line 78
    invoke-static {v1, v4}, Lcom/apk/mq0;->new(Landroid/content/Context;I)I

    move-result v4

    .line 79
    invoke-virtual {v0, v1, v4}, Lcom/apk/kq0;->for(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_d

    .line 80
    :cond_1b
    sget v6, Landroidx/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq v2, v6, :cond_20

    sget v6, Landroidx/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne v2, v6, :cond_1c

    goto :goto_c

    .line 81
    :cond_1c
    sget-object v6, Lcom/apk/kq0;->class:[I

    invoke-static {v6, v2}, Lcom/apk/kq0;->if([II)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 82
    sget v4, Landroidx/appcompat/R$attr;->colorControlNormal:I

    invoke-static {v1, v4}, Lcom/apk/mq0;->try(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_d

    .line 83
    :cond_1d
    sget-object v6, Lcom/apk/kq0;->super:[I

    invoke-static {v6, v2}, Lcom/apk/kq0;->if([II)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 84
    sget v4, Landroidx/appcompat/R$color;->abc_tint_default:I

    invoke-static {v1, v4}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_d

    .line 85
    :cond_1e
    sget-object v6, Lcom/apk/kq0;->throw:[I

    invoke-static {v6, v2}, Lcom/apk/kq0;->if([II)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 86
    sget v4, Landroidx/appcompat/R$color;->abc_tint_btn_checkable:I

    invoke-static {v1, v4}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_d

    .line 87
    :cond_1f
    sget v6, Landroidx/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne v2, v6, :cond_21

    .line 88
    sget v4, Landroidx/appcompat/R$color;->abc_tint_seek_thumb:I

    invoke-static {v1, v4}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_d

    .line 89
    :cond_20
    :goto_c
    sget v4, Landroidx/appcompat/R$color;->abc_tint_spinner:I

    invoke-static {v1, v4}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    :cond_21
    :goto_d
    if-eqz v4, :cond_24

    .line 90
    iget-object v6, v0, Lcom/apk/kq0;->do:Ljava/util/WeakHashMap;

    if-nez v6, :cond_22

    .line 91
    new-instance v6, Ljava/util/WeakHashMap;

    invoke-direct {v6}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v6, v0, Lcom/apk/kq0;->do:Ljava/util/WeakHashMap;

    .line 92
    :cond_22
    iget-object v6, v0, Lcom/apk/kq0;->do:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_23

    .line 93
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 94
    iget-object v7, v0, Lcom/apk/kq0;->do:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v1, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_23
    invoke-virtual {v6, v2, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_24
    if-eqz v4, :cond_28

    .line 96
    invoke-static {v13}, Lcom/apk/sb0;->final(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 97
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 98
    :cond_25
    invoke-static {v13}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    invoke-static {v1, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 100
    sget v4, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne v2, v4, :cond_26

    .line 101
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_26
    if-eqz v8, :cond_27

    .line 102
    invoke-static {v1, v8}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_27
    move-object v13, v1

    goto/16 :goto_13

    .line 103
    :cond_28
    sget v4, Landroidx/appcompat/R$drawable;->abc_seekbar_track_material:I

    const v6, 0x102000d

    const v7, 0x102000f

    const/high16 v8, 0x1020000

    if-ne v2, v4, :cond_29

    .line 104
    move-object v2, v13

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 105
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 106
    invoke-static {v1, v5}, Lcom/apk/mq0;->new(Landroid/content/Context;I)I

    move-result v5

    sget-object v8, Lcom/apk/kq0;->goto:Landroid/graphics/PorterDuff$Mode;

    .line 107
    invoke-static {v4, v5, v8}, Lcom/apk/kq0;->goto(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 108
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 109
    invoke-static {v1, v5}, Lcom/apk/mq0;->new(Landroid/content/Context;I)I

    move-result v5

    sget-object v7, Lcom/apk/kq0;->goto:Landroid/graphics/PorterDuff$Mode;

    .line 110
    invoke-static {v4, v5, v7}, Lcom/apk/kq0;->goto(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 111
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v4, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 112
    invoke-static {v1, v4}, Lcom/apk/mq0;->new(Landroid/content/Context;I)I

    move-result v1

    sget-object v4, Lcom/apk/kq0;->goto:Landroid/graphics/PorterDuff$Mode;

    .line 113
    invoke-static {v2, v1, v4}, Lcom/apk/kq0;->goto(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_13

    .line 114
    :cond_29
    sget v4, Landroidx/appcompat/R$drawable;->abc_ratingbar_material:I

    if-eq v2, v4, :cond_32

    sget v4, Landroidx/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq v2, v4, :cond_32

    sget v4, Landroidx/appcompat/R$drawable;->abc_ratingbar_small_material:I

    if-ne v2, v4, :cond_2a

    goto/16 :goto_12

    .line 115
    :cond_2a
    sget-object v4, Lcom/apk/kq0;->goto:Landroid/graphics/PorterDuff$Mode;

    .line 116
    sget-object v6, Lcom/apk/kq0;->catch:[I

    invoke-static {v6, v2}, Lcom/apk/kq0;->if([II)Z

    move-result v6

    const v7, 0x1010031

    const/4 v8, -0x1

    if-eqz v6, :cond_2b

    .line 117
    sget v7, Landroidx/appcompat/R$attr;->colorControlNormal:I

    goto :goto_e

    .line 118
    :cond_2b
    sget-object v6, Lcom/apk/kq0;->const:[I

    invoke-static {v6, v2}, Lcom/apk/kq0;->if([II)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 119
    sget v7, Landroidx/appcompat/R$attr;->colorControlActivated:I

    goto :goto_e

    .line 120
    :cond_2c
    sget-object v6, Lcom/apk/kq0;->final:[I

    invoke-static {v6, v2}, Lcom/apk/kq0;->if([II)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 121
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_e

    .line 122
    :cond_2d
    sget v6, Landroidx/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne v2, v6, :cond_2e

    const v2, 0x42233333    # 40.8f

    .line 123
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const v6, 0x1010030

    const v12, 0x1010030

    goto :goto_f

    .line 124
    :cond_2e
    sget v6, Landroidx/appcompat/R$drawable;->abc_dialog_material_background:I

    if-ne v2, v6, :cond_2f

    :goto_e
    move v12, v7

    const/4 v2, -0x1

    :goto_f
    move v6, v12

    const/4 v12, 0x1

    goto :goto_10

    :cond_2f
    const/4 v2, -0x1

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_10
    if-eqz v12, :cond_31

    .line 125
    invoke-static {v13}, Lcom/apk/sb0;->final(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 126
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_11

    :cond_30
    move-object v7, v13

    .line 127
    :goto_11
    invoke-static {v1, v6}, Lcom/apk/mq0;->new(Landroid/content/Context;I)I

    move-result v1

    .line 128
    invoke-static {v1, v4}, Lcom/apk/kq0;->else(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v2, v8, :cond_33

    .line 129
    invoke-virtual {v7, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_13

    :cond_31
    const/4 v5, 0x0

    goto :goto_13

    .line 130
    :cond_32
    :goto_12
    move-object v2, v13

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 131
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 132
    invoke-static {v1, v5}, Lcom/apk/mq0;->do(Landroid/content/Context;I)I

    move-result v5

    sget-object v8, Lcom/apk/kq0;->goto:Landroid/graphics/PorterDuff$Mode;

    .line 133
    invoke-static {v4, v5, v8}, Lcom/apk/kq0;->goto(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 134
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 135
    invoke-static {v1, v5}, Lcom/apk/mq0;->new(Landroid/content/Context;I)I

    move-result v5

    sget-object v7, Lcom/apk/kq0;->goto:Landroid/graphics/PorterDuff$Mode;

    .line 136
    invoke-static {v4, v5, v7}, Lcom/apk/kq0;->goto(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 137
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v4, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 138
    invoke-static {v1, v4}, Lcom/apk/mq0;->new(Landroid/content/Context;I)I

    move-result v1

    sget-object v4, Lcom/apk/kq0;->goto:Landroid/graphics/PorterDuff$Mode;

    .line 139
    invoke-static {v2, v1, v4}, Lcom/apk/kq0;->goto(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    :cond_33
    :goto_13
    if-eqz v13, :cond_36

    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_36

    .line 141
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 142
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    if-eqz v1, :cond_35

    .line 143
    array-length v2, v1

    if-nez v2, :cond_34

    goto :goto_14

    .line 144
    :cond_34
    sget-object v2, Lcom/apk/mq0;->final:[I

    invoke-virtual {v13, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_15

    .line 145
    :cond_35
    :goto_14
    sget-object v2, Lcom/apk/mq0;->class:[I

    invoke-virtual {v13, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 146
    :goto_15
    invoke-virtual {v13, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_36
    return-object v13

    :cond_37
    const/4 v1, 0x0

    .line 147
    iput-boolean v1, v0, Lcom/apk/kq0;->else:Z

    .line 148
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final do(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/kq0;->new:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/apk/kq0;->try:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/LongSparseArray;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/apk/kq0;->try:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, p3, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 7
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final for(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    .line 1
    sget v2, Landroidx/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {p1, v2}, Lcom/apk/mq0;->new(Landroid/content/Context;I)I

    move-result v2

    .line 2
    sget v3, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p1, v3}, Lcom/apk/mq0;->do(Landroid/content/Context;I)I

    move-result p1

    .line 3
    sget-object v3, Lcom/apk/mq0;->if:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p1, v0, v4

    .line 4
    sget-object p1, Lcom/apk/mq0;->catch:[I

    const/4 v3, 0x1

    aput-object p1, v1, v3

    .line 5
    invoke-static {v2, p2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p1

    aput p1, v0, v3

    .line 6
    sget-object p1, Lcom/apk/mq0;->try:[I

    const/4 v3, 0x2

    aput-object p1, v1, v3

    .line 7
    invoke-static {v2, p2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p1

    aput p1, v0, v3

    .line 8
    sget-object p1, Lcom/apk/mq0;->final:[I

    const/4 v2, 0x3

    aput-object p1, v1, v2

    aput p2, v0, v2

    .line 9
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public final try(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/kq0;->new:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/kq0;->try:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/LongSparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-object v2

    .line 5
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {v1, p2, p3}, Landroidx/collection/LongSparseArray;->delete(J)V

    .line 9
    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
