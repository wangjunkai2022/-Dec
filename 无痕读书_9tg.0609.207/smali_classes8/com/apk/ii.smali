.class public Lcom/apk/ii;
.super Ljava/lang/Object;
.source "Glide.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ii$do;
    }
.end annotation


# static fields
.field public static volatile break:Lcom/apk/ii;

.field public static volatile catch:Z


# instance fields
.field public final case:Lcom/apk/nl;

.field public final do:Lcom/apk/vk;

.field public final else:Lcom/apk/hq;

.field public final for:Lcom/apk/hm;

.field public final goto:Lcom/apk/zp;

.field public final if:Lcom/apk/pl;

.field public final new:Lcom/apk/li;

.field public final this:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/qi;",
            ">;"
        }
    .end annotation
.end field

.field public final try:Lcom/apk/oi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apk/vk;Lcom/apk/hm;Lcom/apk/pl;Lcom/apk/nl;Lcom/apk/hq;Lcom/apk/zp;ILcom/apk/ii$do;Ljava/util/Map;Ljava/util/List;ZZ)V
    .locals 24
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/vk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/hm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/pl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/apk/nl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/apk/hq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/apk/zp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/apk/ii$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apk/vk;",
            "Lcom/apk/hm;",
            "Lcom/apk/pl;",
            "Lcom/apk/nl;",
            "Lcom/apk/hq;",
            "Lcom/apk/zp;",
            "I",
            "Lcom/apk/ii$do;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/apk/ri<",
            "**>;>;",
            "Ljava/util/List<",
            "Lcom/apk/cr<",
            "Ljava/lang/Object;",
            ">;>;ZZ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    .line 1
    const-class v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/Integer;

    const-class v7, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/apk/ii;->this:Ljava/util/List;

    move-object/from16 v10, p2

    .line 3
    iput-object v10, v1, Lcom/apk/ii;->do:Lcom/apk/vk;

    .line 4
    iput-object v2, v1, Lcom/apk/ii;->if:Lcom/apk/pl;

    .line 5
    iput-object v4, v1, Lcom/apk/ii;->case:Lcom/apk/nl;

    move-object/from16 v8, p3

    .line 6
    iput-object v8, v1, Lcom/apk/ii;->for:Lcom/apk/hm;

    move-object/from16 v8, p6

    .line 7
    iput-object v8, v1, Lcom/apk/ii;->else:Lcom/apk/hq;

    move-object/from16 v8, p7

    .line 8
    iput-object v8, v1, Lcom/apk/ii;->goto:Lcom/apk/zp;

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 10
    new-instance v9, Lcom/apk/oi;

    invoke-direct {v9}, Lcom/apk/oi;-><init>()V

    iput-object v9, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    .line 11
    new-instance v11, Lcom/apk/bo;

    invoke-direct {v11}, Lcom/apk/bo;-><init>()V

    .line 12
    iget-object v9, v9, Lcom/apk/oi;->else:Lcom/apk/sq;

    .line 13
    monitor-enter v9

    .line 14
    :try_start_0
    iget-object v12, v9, Lcom/apk/sq;->do:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    monitor-exit v9

    .line 16
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1b

    if-lt v9, v11, :cond_0

    .line 17
    iget-object v9, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    new-instance v11, Lcom/apk/ho;

    invoke-direct {v11}, Lcom/apk/ho;-><init>()V

    .line 18
    iget-object v9, v9, Lcom/apk/oi;->else:Lcom/apk/sq;

    .line 19
    monitor-enter v9

    .line 20
    :try_start_1
    iget-object v12, v9, Lcom/apk/sq;->do:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 22
    :cond_0
    :goto_0
    iget-object v9, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    invoke-virtual {v9}, Lcom/apk/oi;->try()Ljava/util/List;

    move-result-object v9

    .line 23
    new-instance v11, Lcom/apk/fp;

    invoke-direct {v11, v0, v9, v2, v4}, Lcom/apk/fp;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/apk/pl;Lcom/apk/nl;)V

    .line 24
    new-instance v12, Lcom/apk/uo;

    new-instance v13, Lcom/apk/uo$else;

    invoke-direct {v13}, Lcom/apk/uo$else;-><init>()V

    invoke-direct {v12, v2, v13}, Lcom/apk/uo;-><init>(Lcom/apk/pl;Lcom/apk/uo$case;)V

    .line 25
    new-instance v13, Lcom/apk/eo;

    iget-object v14, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    .line 26
    invoke-virtual {v14}, Lcom/apk/oi;->try()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-direct {v13, v14, v15, v2, v4}, Lcom/apk/eo;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/apk/pl;Lcom/apk/nl;)V

    if-eqz p13, :cond_1

    .line 27
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1c

    if-lt v14, v15, :cond_1

    .line 28
    new-instance v14, Lcom/apk/lo;

    invoke-direct {v14}, Lcom/apk/lo;-><init>()V

    .line 29
    new-instance v15, Lcom/apk/yn;

    invoke-direct {v15}, Lcom/apk/yn;-><init>()V

    goto :goto_1

    .line 30
    :cond_1
    new-instance v15, Lcom/apk/xn;

    invoke-direct {v15, v13}, Lcom/apk/xn;-><init>(Lcom/apk/eo;)V

    .line 31
    new-instance v14, Lcom/apk/ro;

    invoke-direct {v14, v13, v4}, Lcom/apk/ro;-><init>(Lcom/apk/eo;Lcom/apk/nl;)V

    .line 32
    :goto_1
    new-instance v10, Lcom/apk/bp;

    invoke-direct {v10, v0}, Lcom/apk/bp;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v7

    .line 33
    new-instance v7, Lcom/apk/dn$for;

    invoke-direct {v7, v8}, Lcom/apk/dn$for;-><init>(Landroid/content/res/Resources;)V

    .line 34
    new-instance v0, Lcom/apk/dn$new;

    invoke-direct {v0, v8}, Lcom/apk/dn$new;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v17, v5

    .line 35
    new-instance v5, Lcom/apk/dn$if;

    invoke-direct {v5, v8}, Lcom/apk/dn$if;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p3, v0

    .line 36
    new-instance v0, Lcom/apk/dn$do;

    invoke-direct {v0, v8}, Lcom/apk/dn$do;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p6, v0

    .line 37
    new-instance v0, Lcom/apk/tn;

    invoke-direct {v0, v4}, Lcom/apk/tn;-><init>(Lcom/apk/nl;)V

    move-object/from16 v18, v6

    .line 38
    new-instance v6, Lcom/apk/pp;

    invoke-direct {v6}, Lcom/apk/pp;-><init>()V

    move-object/from16 p7, v6

    .line 39
    new-instance v6, Lcom/apk/sp;

    invoke-direct {v6}, Lcom/apk/sp;-><init>()V

    move-object/from16 p13, v6

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v19, v6

    .line 41
    iget-object v6, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    move-object/from16 v20, v5

    const-class v5, Ljava/nio/ByteBuffer;

    move-object/from16 v21, v7

    new-instance v7, Lcom/apk/nm;

    invoke-direct {v7}, Lcom/apk/nm;-><init>()V

    .line 42
    invoke-virtual {v6, v5, v7}, Lcom/apk/oi;->do(Ljava/lang/Class;Lcom/apk/gj;)Lcom/apk/oi;

    const-class v5, Ljava/io/InputStream;

    new-instance v7, Lcom/apk/en;

    invoke-direct {v7, v4}, Lcom/apk/en;-><init>(Lcom/apk/nl;)V

    .line 43
    invoke-virtual {v6, v5, v7}, Lcom/apk/oi;->do(Ljava/lang/Class;Lcom/apk/gj;)Lcom/apk/oi;

    const-string v5, "Bitmap"

    const-class v7, Ljava/nio/ByteBuffer;

    move-object/from16 v22, v10

    const-class v10, Landroid/graphics/Bitmap;

    .line 44
    invoke-virtual {v6, v5, v7, v10, v15}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    const-string v5, "Bitmap"

    const-class v7, Ljava/io/InputStream;

    const-class v10, Landroid/graphics/Bitmap;

    .line 45
    invoke-virtual {v6, v5, v7, v10, v14}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    .line 46
    iget-object v5, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    const-string v6, "Bitmap"

    const-class v7, Landroid/os/ParcelFileDescriptor;

    const-class v10, Landroid/graphics/Bitmap;

    move-object/from16 v23, v3

    new-instance v3, Lcom/apk/no;

    invoke-direct {v3, v13}, Lcom/apk/no;-><init>(Lcom/apk/eo;)V

    invoke-virtual {v5, v6, v7, v10, v3}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    .line 47
    iget-object v3, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    const-string v5, "Bitmap"

    const-class v6, Landroid/os/ParcelFileDescriptor;

    const-class v7, Landroid/graphics/Bitmap;

    .line 48
    invoke-virtual {v3, v5, v6, v7, v12}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    const-string v5, "Bitmap"

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    const-class v7, Landroid/graphics/Bitmap;

    .line 49
    new-instance v10, Lcom/apk/uo;

    new-instance v13, Lcom/apk/uo$for;

    const/4 v1, 0x0

    invoke-direct {v13, v1}, Lcom/apk/uo$for;-><init>(Lcom/apk/uo$do;)V

    invoke-direct {v10, v2, v13}, Lcom/apk/uo;-><init>(Lcom/apk/pl;Lcom/apk/uo$case;)V

    .line 50
    invoke-virtual {v3, v5, v6, v7, v10}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    const-class v1, Landroid/graphics/Bitmap;

    const-class v5, Landroid/graphics/Bitmap;

    .line 51
    sget-object v6, Lcom/apk/gn$do;->do:Lcom/apk/gn$do;

    .line 52
    invoke-virtual {v3, v1, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-string v1, "Bitmap"

    const-class v5, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lcom/apk/to;

    invoke-direct {v7}, Lcom/apk/to;-><init>()V

    .line 53
    invoke-virtual {v3, v1, v5, v6, v7}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    const-class v1, Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {v3, v1, v0}, Lcom/apk/oi;->if(Ljava/lang/Class;Lcom/apk/pj;)Lcom/apk/oi;

    const-string v1, "BitmapDrawable"

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lcom/apk/rn;

    invoke-direct {v7, v8, v15}, Lcom/apk/rn;-><init>(Landroid/content/res/Resources;Lcom/apk/oj;)V

    .line 55
    invoke-virtual {v3, v1, v5, v6, v7}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    const-string v1, "BitmapDrawable"

    const-class v5, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lcom/apk/rn;

    invoke-direct {v7, v8, v14}, Lcom/apk/rn;-><init>(Landroid/content/res/Resources;Lcom/apk/oj;)V

    .line 56
    invoke-virtual {v3, v1, v5, v6, v7}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    const-string v1, "BitmapDrawable"

    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lcom/apk/rn;

    invoke-direct {v7, v8, v12}, Lcom/apk/rn;-><init>(Landroid/content/res/Resources;Lcom/apk/oj;)V

    .line 57
    invoke-virtual {v3, v1, v5, v6, v7}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Lcom/apk/sn;

    invoke-direct {v5, v2, v0}, Lcom/apk/sn;-><init>(Lcom/apk/pl;Lcom/apk/pj;)V

    .line 58
    invoke-virtual {v3, v1, v5}, Lcom/apk/oi;->if(Ljava/lang/Class;Lcom/apk/pj;)Lcom/apk/oi;

    const-string v0, "Gif"

    const-class v1, Ljava/io/InputStream;

    const-class v5, Lcom/apk/hp;

    new-instance v6, Lcom/apk/op;

    invoke-direct {v6, v9, v11, v4}, Lcom/apk/op;-><init>(Ljava/util/List;Lcom/apk/oj;Lcom/apk/nl;)V

    .line 59
    invoke-virtual {v3, v0, v1, v5, v6}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    const-string v0, "Gif"

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v5, Lcom/apk/hp;

    .line 60
    invoke-virtual {v3, v0, v1, v5, v11}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    const-class v0, Lcom/apk/hp;

    new-instance v1, Lcom/apk/ip;

    invoke-direct {v1}, Lcom/apk/ip;-><init>()V

    .line 61
    invoke-virtual {v3, v0, v1}, Lcom/apk/oi;->if(Ljava/lang/Class;Lcom/apk/pj;)Lcom/apk/oi;

    .line 62
    sget-object v0, Lcom/apk/gn$do;->do:Lcom/apk/gn$do;

    move-object/from16 v1, v23

    .line 63
    invoke-virtual {v3, v1, v1, v0}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-string v0, "Bitmap"

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/apk/mp;

    invoke-direct {v6, v2}, Lcom/apk/mp;-><init>(Lcom/apk/pl;)V

    .line 64
    invoke-virtual {v3, v0, v1, v5, v6}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/graphics/drawable/Drawable;

    const-string v5, "legacy_append"

    move-object/from16 v6, v22

    .line 65
    invoke-virtual {v3, v5, v0, v1, v6}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    .line 66
    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/graphics/Bitmap;

    new-instance v5, Lcom/apk/po;

    invoke-direct {v5, v6, v2}, Lcom/apk/po;-><init>(Lcom/apk/bp;Lcom/apk/pl;)V

    const-string v6, "legacy_append"

    .line 67
    invoke-virtual {v3, v6, v0, v1, v5}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    .line 68
    new-instance v0, Lcom/apk/wo$do;

    invoke-direct {v0}, Lcom/apk/wo$do;-><init>()V

    .line 69
    invoke-virtual {v3, v0}, Lcom/apk/oi;->else(Lcom/apk/vj$do;)Lcom/apk/oi;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/nio/ByteBuffer;

    new-instance v5, Lcom/apk/om$if;

    invoke-direct {v5}, Lcom/apk/om$if;-><init>()V

    .line 70
    invoke-virtual {v3, v0, v1, v5}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/InputStream;

    new-instance v5, Lcom/apk/qm$try;

    invoke-direct {v5}, Lcom/apk/qm$try;-><init>()V

    .line 71
    invoke-virtual {v3, v0, v1, v5}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/File;

    new-instance v5, Lcom/apk/dp;

    invoke-direct {v5}, Lcom/apk/dp;-><init>()V

    const-string v6, "legacy_append"

    .line 72
    invoke-virtual {v3, v6, v0, v1, v5}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    .line 73
    const-class v0, Ljava/io/File;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/apk/qm$if;

    invoke-direct {v5}, Lcom/apk/qm$if;-><init>()V

    .line 74
    invoke-virtual {v3, v0, v1, v5}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/File;

    .line 75
    sget-object v5, Lcom/apk/gn$do;->do:Lcom/apk/gn$do;

    .line 76
    invoke-virtual {v3, v0, v1, v5}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    new-instance v0, Lcom/apk/bk$do;

    invoke-direct {v0, v4}, Lcom/apk/bk$do;-><init>(Lcom/apk/nl;)V

    .line 77
    invoke-virtual {v3, v0}, Lcom/apk/oi;->else(Lcom/apk/vj$do;)Lcom/apk/oi;

    move-object/from16 v1, p0

    .line 78
    iget-object v0, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    new-instance v3, Lcom/apk/dk$do;

    invoke-direct {v3}, Lcom/apk/dk$do;-><init>()V

    invoke-virtual {v0, v3}, Lcom/apk/oi;->else(Lcom/apk/vj$do;)Lcom/apk/oi;

    .line 79
    iget-object v0, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/io/InputStream;

    move-object/from16 v6, v21

    .line 80
    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v7, v20

    .line 81
    invoke-virtual {v0, v3, v5, v7}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Ljava/io/InputStream;

    move-object/from16 v5, v18

    .line 82
    invoke-virtual {v0, v5, v3, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    .line 83
    invoke-virtual {v0, v5, v3, v7}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    move-object/from16 v6, p3

    .line 84
    invoke-virtual {v0, v5, v3, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v9, p6

    .line 85
    invoke-virtual {v0, v3, v7, v9}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/content/res/AssetFileDescriptor;

    .line 86
    invoke-virtual {v0, v5, v3, v9}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/net/Uri;

    .line 87
    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Ljava/io/InputStream;

    new-instance v5, Lcom/apk/pm$for;

    invoke-direct {v5}, Lcom/apk/pm$for;-><init>()V

    move-object/from16 v6, v17

    .line 88
    invoke-virtual {v0, v6, v3, v5}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v7, Lcom/apk/pm$for;

    invoke-direct {v7}, Lcom/apk/pm$for;-><init>()V

    .line 89
    invoke-virtual {v0, v3, v5, v7}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Ljava/io/InputStream;

    new-instance v5, Lcom/apk/fn$for;

    invoke-direct {v5}, Lcom/apk/fn$for;-><init>()V

    .line 90
    invoke-virtual {v0, v6, v3, v5}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/apk/fn$if;

    invoke-direct {v5}, Lcom/apk/fn$if;-><init>()V

    .line 91
    invoke-virtual {v0, v6, v3, v5}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/content/res/AssetFileDescriptor;

    new-instance v5, Lcom/apk/fn$do;

    invoke-direct {v5}, Lcom/apk/fn$do;-><init>()V

    .line 92
    invoke-virtual {v0, v6, v3, v5}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/apk/kn$do;

    invoke-direct {v6}, Lcom/apk/kn$do;-><init>()V

    .line 93
    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/apk/lm$for;

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/apk/lm$for;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/apk/lm$if;

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/apk/lm$if;-><init>(Landroid/content/res/AssetManager;)V

    .line 96
    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/apk/ln$do;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Lcom/apk/ln$do;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/apk/mn$do;

    invoke-direct {v6, v7}, Lcom/apk/mn$do;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_2

    .line 100
    iget-object v0, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/apk/nn$for;

    invoke-direct {v6, v7}, Lcom/apk/nn$for;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    .line 101
    iget-object v0, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/apk/nn$if;

    invoke-direct {v6, v7}, Lcom/apk/nn$if;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    .line 102
    :cond_2
    iget-object v0, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/apk/hn$new;

    move-object/from16 v9, v19

    invoke-direct {v6, v9}, Lcom/apk/hn$new;-><init>(Landroid/content/ContentResolver;)V

    .line 103
    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lcom/apk/hn$if;

    invoke-direct {v6, v9}, Lcom/apk/hn$if;-><init>(Landroid/content/ContentResolver;)V

    .line 104
    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lcom/apk/hn$do;

    invoke-direct {v6, v9}, Lcom/apk/hn$do;-><init>(Landroid/content/ContentResolver;)V

    .line 105
    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/apk/in$do;

    invoke-direct {v6}, Lcom/apk/in$do;-><init>()V

    .line 106
    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Ljava/net/URL;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/apk/on$do;

    invoke-direct {v6}, Lcom/apk/on$do;-><init>()V

    .line 107
    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Ljava/io/File;

    new-instance v6, Lcom/apk/vm$do;

    invoke-direct {v6, v7}, Lcom/apk/vm$do;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Lcom/apk/rm;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/apk/jn$do;

    invoke-direct {v6}, Lcom/apk/jn$do;-><init>()V

    .line 109
    invoke-virtual {v0, v3, v5, v6}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Ljava/nio/ByteBuffer;

    new-instance v5, Lcom/apk/mm$do;

    invoke-direct {v5}, Lcom/apk/mm$do;-><init>()V

    move-object/from16 v6, v16

    .line 110
    invoke-virtual {v0, v6, v3, v5}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Ljava/io/InputStream;

    new-instance v5, Lcom/apk/mm$new;

    invoke-direct {v5}, Lcom/apk/mm$new;-><init>()V

    .line 111
    invoke-virtual {v0, v6, v3, v5}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/net/Uri;

    const-class v5, Landroid/net/Uri;

    .line 112
    sget-object v9, Lcom/apk/gn$do;->do:Lcom/apk/gn$do;

    .line 113
    invoke-virtual {v0, v3, v5, v9}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    .line 114
    sget-object v9, Lcom/apk/gn$do;->do:Lcom/apk/gn$do;

    .line 115
    invoke-virtual {v0, v3, v5, v9}, Lcom/apk/oi;->for(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    const-class v3, Landroid/graphics/drawable/Drawable;

    const-class v5, Landroid/graphics/drawable/Drawable;

    new-instance v9, Lcom/apk/cp;

    invoke-direct {v9}, Lcom/apk/cp;-><init>()V

    const-string v10, "legacy_append"

    .line 116
    invoke-virtual {v0, v10, v3, v5, v9}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    .line 117
    const-class v3, Landroid/graphics/Bitmap;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v9, Lcom/apk/qp;

    invoke-direct {v9, v8}, Lcom/apk/qp;-><init>(Landroid/content/res/Resources;)V

    .line 118
    invoke-virtual {v0, v3, v5, v9}, Lcom/apk/oi;->goto(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/tp;)Lcom/apk/oi;

    const-class v3, Landroid/graphics/Bitmap;

    move-object/from16 v5, p7

    .line 119
    invoke-virtual {v0, v3, v6, v5}, Lcom/apk/oi;->goto(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/tp;)Lcom/apk/oi;

    const-class v3, Landroid/graphics/drawable/Drawable;

    new-instance v9, Lcom/apk/rp;

    move-object/from16 v10, p13

    invoke-direct {v9, v2, v5, v10}, Lcom/apk/rp;-><init>(Lcom/apk/pl;Lcom/apk/tp;Lcom/apk/tp;)V

    .line 120
    invoke-virtual {v0, v3, v6, v9}, Lcom/apk/oi;->goto(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/tp;)Lcom/apk/oi;

    const-class v3, Lcom/apk/hp;

    .line 121
    invoke-virtual {v0, v3, v6, v10}, Lcom/apk/oi;->goto(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/tp;)Lcom/apk/oi;

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    .line 123
    new-instance v0, Lcom/apk/uo;

    new-instance v3, Lcom/apk/uo$new;

    invoke-direct {v3}, Lcom/apk/uo$new;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/apk/uo;-><init>(Lcom/apk/pl;Lcom/apk/uo$case;)V

    .line 124
    iget-object v2, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    const-class v3, Ljava/nio/ByteBuffer;

    const-class v5, Landroid/graphics/Bitmap;

    const-string v6, "legacy_append"

    .line 125
    invoke-virtual {v2, v6, v3, v5, v0}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    .line 126
    iget-object v2, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    const-class v3, Ljava/nio/ByteBuffer;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lcom/apk/rn;

    invoke-direct {v6, v8, v0}, Lcom/apk/rn;-><init>(Landroid/content/res/Resources;Lcom/apk/oj;)V

    const-string v0, "legacy_append"

    .line 127
    invoke-virtual {v2, v0, v3, v5, v6}, Lcom/apk/oi;->new(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/oj;)Lcom/apk/oi;

    .line 128
    :cond_3
    new-instance v6, Lcom/apk/lr;

    invoke-direct {v6}, Lcom/apk/lr;-><init>()V

    .line 129
    new-instance v0, Lcom/apk/li;

    iget-object v5, v1, Lcom/apk/ii;->try:Lcom/apk/oi;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p2

    move/from16 v11, p12

    move/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/apk/li;-><init>(Landroid/content/Context;Lcom/apk/nl;Lcom/apk/oi;Lcom/apk/lr;Lcom/apk/ii$do;Ljava/util/Map;Ljava/util/List;Lcom/apk/vk;ZI)V

    iput-object v0, v1, Lcom/apk/ii;->new:Lcom/apk/li;

    return-void

    :catchall_1
    move-exception v0

    .line 130
    monitor-exit v9

    throw v0
.end method

.method public static case(Landroid/content/Context;)Lcom/apk/qi;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 1
    invoke-static {p0, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/apk/ii;->else:Lcom/apk/hq;

    .line 4
    invoke-virtual {v0, p0}, Lcom/apk/hq;->for(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object p0

    return-object p0
.end method

.method public static do(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 26
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation

    .line 1
    sget-boolean v0, Lcom/apk/ii;->catch:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/apk/ii;->catch:Z

    .line 3
    new-instance v1, Lcom/apk/ji;

    invoke-direct {v1}, Lcom/apk/ji;-><init>()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    .line 6
    move-object/from16 v4, p1

    check-cast v4, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;

    .line 7
    iget-object v4, v4, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->do:Lcom/manhua/utils/image/DesGlideModule;

    if-eqz v4, :cond_0

    move-object/from16 v16, v2

    goto :goto_2

    .line 8
    :cond_0
    throw v3

    :cond_1
    const-string v2, "ManifestParser"

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 11
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 12
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got app info metadata: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    :cond_3
    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "GlideModule"

    .line 16
    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v8, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 17
    invoke-static {v4}, Lcom/apk/pq;->do(Ljava/lang/String;)Lcom/apk/nq;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_5
    :goto_1
    move-object/from16 v16, v5

    :goto_2
    const/4 v2, 0x3

    const-string v4, "Glide"

    if-eqz p1, :cond_8

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    .line 19
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    .line 21
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 22
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 23
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/apk/nq;

    .line 24
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    .line 25
    :cond_6
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 26
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 28
    :cond_8
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 29
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apk/nq;

    const-string v5, "Discovered GlideModule from manifest: "

    .line 30
    invoke-static {v5}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_a

    .line 31
    new-instance v3, Lcom/apk/gi;

    invoke-direct {v3}, Lcom/apk/gi;-><init>()V

    .line 32
    :cond_a
    iput-object v3, v1, Lcom/apk/ji;->const:Lcom/apk/hq$if;

    .line 33
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/nq;

    .line 34
    invoke-interface {v3, v15, v1}, Lcom/apk/mq;->do(Landroid/content/Context;Lcom/apk/ji;)V

    goto :goto_5

    :cond_b
    if-eqz p1, :cond_c

    .line 35
    move-object/from16 v2, p1

    check-cast v2, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;

    .line 36
    iget-object v2, v2, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->do:Lcom/manhua/utils/image/DesGlideModule;

    invoke-virtual {v2, v15, v1}, Lcom/manhua/utils/image/DesGlideModule;->do(Landroid/content/Context;Lcom/apk/ji;)V

    .line 37
    :cond_c
    iget-object v2, v1, Lcom/apk/ji;->case:Lcom/apk/km;

    const-string v3, "Name must be non-null and non-empty, but given: "

    const/4 v4, 0x0

    if-nez v2, :cond_e

    .line 38
    sget-object v2, Lcom/apk/km$if;->if:Lcom/apk/km$if;

    .line 39
    invoke-static {}, Lcom/apk/km;->do()I

    move-result v7

    const-string v5, "source"

    .line 40
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 41
    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v8, 0x0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v12, Lcom/apk/km$do;

    invoke-direct {v12, v5, v2, v4}, Lcom/apk/km$do;-><init>(Ljava/lang/String;Lcom/apk/km$if;Z)V

    move-object v5, v13

    move v6, v7

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 42
    new-instance v2, Lcom/apk/km;

    invoke-direct {v2, v13}, Lcom/apk/km;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 43
    iput-object v2, v1, Lcom/apk/ji;->case:Lcom/apk/km;

    goto :goto_6

    .line 44
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3, v5}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_e
    :goto_6
    iget-object v2, v1, Lcom/apk/ji;->else:Lcom/apk/km;

    if-nez v2, :cond_f

    .line 46
    invoke-static {}, Lcom/apk/km;->if()Lcom/apk/km;

    move-result-object v2

    iput-object v2, v1, Lcom/apk/ji;->else:Lcom/apk/km;

    .line 47
    :cond_f
    iget-object v2, v1, Lcom/apk/ji;->final:Lcom/apk/km;

    if-nez v2, :cond_12

    .line 48
    invoke-static {}, Lcom/apk/km;->do()I

    move-result v2

    const/4 v5, 0x4

    if-lt v2, v5, :cond_10

    const/4 v2, 0x2

    const/4 v7, 0x2

    goto :goto_7

    :cond_10
    const/4 v2, 0x1

    const/4 v7, 0x1

    .line 49
    :goto_7
    sget-object v2, Lcom/apk/km$if;->if:Lcom/apk/km$if;

    const-string v5, "animation"

    .line 50
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 51
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v8, 0x0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v12, Lcom/apk/km$do;

    invoke-direct {v12, v5, v2, v0}, Lcom/apk/km$do;-><init>(Ljava/lang/String;Lcom/apk/km$if;Z)V

    move-object v5, v3

    move v6, v7

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 52
    new-instance v0, Lcom/apk/km;

    invoke-direct {v0, v3}, Lcom/apk/km;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 53
    iput-object v0, v1, Lcom/apk/ji;->final:Lcom/apk/km;

    goto :goto_8

    .line 54
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3, v5}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_12
    :goto_8
    iget-object v0, v1, Lcom/apk/ji;->this:Lcom/apk/im;

    if-nez v0, :cond_13

    .line 56
    new-instance v0, Lcom/apk/im$do;

    invoke-direct {v0, v15}, Lcom/apk/im$do;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v2, Lcom/apk/im;

    invoke-direct {v2, v0}, Lcom/apk/im;-><init>(Lcom/apk/im$do;)V

    .line 58
    iput-object v2, v1, Lcom/apk/ji;->this:Lcom/apk/im;

    .line 59
    :cond_13
    iget-object v0, v1, Lcom/apk/ji;->break:Lcom/apk/zp;

    if-nez v0, :cond_14

    .line 60
    new-instance v0, Lcom/apk/bq;

    invoke-direct {v0}, Lcom/apk/bq;-><init>()V

    iput-object v0, v1, Lcom/apk/ji;->break:Lcom/apk/zp;

    .line 61
    :cond_14
    iget-object v0, v1, Lcom/apk/ji;->for:Lcom/apk/pl;

    if-nez v0, :cond_16

    .line 62
    iget-object v0, v1, Lcom/apk/ji;->this:Lcom/apk/im;

    .line 63
    iget v0, v0, Lcom/apk/im;->do:I

    if-lez v0, :cond_15

    .line 64
    new-instance v2, Lcom/apk/vl;

    int-to-long v5, v0

    invoke-direct {v2, v5, v6}, Lcom/apk/vl;-><init>(J)V

    iput-object v2, v1, Lcom/apk/ji;->for:Lcom/apk/pl;

    goto :goto_9

    .line 65
    :cond_15
    new-instance v0, Lcom/apk/ql;

    invoke-direct {v0}, Lcom/apk/ql;-><init>()V

    iput-object v0, v1, Lcom/apk/ji;->for:Lcom/apk/pl;

    .line 66
    :cond_16
    :goto_9
    iget-object v0, v1, Lcom/apk/ji;->new:Lcom/apk/nl;

    if-nez v0, :cond_17

    .line 67
    new-instance v0, Lcom/apk/ul;

    iget-object v2, v1, Lcom/apk/ji;->this:Lcom/apk/im;

    .line 68
    iget v2, v2, Lcom/apk/im;->new:I

    .line 69
    invoke-direct {v0, v2}, Lcom/apk/ul;-><init>(I)V

    iput-object v0, v1, Lcom/apk/ji;->new:Lcom/apk/nl;

    .line 70
    :cond_17
    iget-object v0, v1, Lcom/apk/ji;->try:Lcom/apk/hm;

    if-nez v0, :cond_18

    .line 71
    new-instance v0, Lcom/apk/gm;

    iget-object v2, v1, Lcom/apk/ji;->this:Lcom/apk/im;

    .line 72
    iget v2, v2, Lcom/apk/im;->if:I

    int-to-long v2, v2

    .line 73
    invoke-direct {v0, v2, v3}, Lcom/apk/gm;-><init>(J)V

    iput-object v0, v1, Lcom/apk/ji;->try:Lcom/apk/hm;

    .line 74
    :cond_18
    iget-object v0, v1, Lcom/apk/ji;->goto:Lcom/apk/zl$do;

    if-nez v0, :cond_19

    .line 75
    new-instance v0, Lcom/apk/fm;

    invoke-direct {v0, v15}, Lcom/apk/fm;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/apk/ji;->goto:Lcom/apk/zl$do;

    .line 76
    :cond_19
    iget-object v0, v1, Lcom/apk/ji;->if:Lcom/apk/vk;

    if-nez v0, :cond_1a

    .line 77
    new-instance v0, Lcom/apk/vk;

    iget-object v6, v1, Lcom/apk/ji;->try:Lcom/apk/hm;

    iget-object v7, v1, Lcom/apk/ji;->goto:Lcom/apk/zl$do;

    iget-object v8, v1, Lcom/apk/ji;->else:Lcom/apk/km;

    iget-object v9, v1, Lcom/apk/ji;->case:Lcom/apk/km;

    .line 78
    new-instance v10, Lcom/apk/km;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v20, Lcom/apk/km;->if:J

    sget-object v22, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v23, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v23 .. v23}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v3, Lcom/apk/km$do;

    sget-object v5, Lcom/apk/km$if;->if:Lcom/apk/km$if;

    const-string v11, "source-unlimited"

    invoke-direct {v3, v11, v5, v4}, Lcom/apk/km$do;-><init>(Ljava/lang/String;Lcom/apk/km$if;Z)V

    const/16 v18, 0x0

    const v19, 0x7fffffff

    move-object/from16 v17, v2

    move-object/from16 v24, v3

    invoke-direct/range {v17 .. v24}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v10, v2}, Lcom/apk/km;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 79
    iget-object v11, v1, Lcom/apk/ji;->final:Lcom/apk/km;

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/apk/vk;-><init>(Lcom/apk/hm;Lcom/apk/zl$do;Lcom/apk/km;Lcom/apk/km;Lcom/apk/km;Lcom/apk/km;Z)V

    iput-object v0, v1, Lcom/apk/ji;->if:Lcom/apk/vk;

    .line 80
    :cond_1a
    iget-object v0, v1, Lcom/apk/ji;->super:Ljava/util/List;

    if-nez v0, :cond_1b

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/apk/ji;->super:Ljava/util/List;

    goto :goto_a

    .line 82
    :cond_1b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/apk/ji;->super:Ljava/util/List;

    .line 83
    :goto_a
    new-instance v8, Lcom/apk/hq;

    iget-object v0, v1, Lcom/apk/ji;->const:Lcom/apk/hq$if;

    invoke-direct {v8, v0}, Lcom/apk/hq;-><init>(Lcom/apk/hq$if;)V

    .line 84
    new-instance v0, Lcom/apk/ii;

    iget-object v4, v1, Lcom/apk/ji;->if:Lcom/apk/vk;

    iget-object v5, v1, Lcom/apk/ji;->try:Lcom/apk/hm;

    iget-object v6, v1, Lcom/apk/ji;->for:Lcom/apk/pl;

    iget-object v7, v1, Lcom/apk/ji;->new:Lcom/apk/nl;

    iget-object v9, v1, Lcom/apk/ji;->break:Lcom/apk/zp;

    iget v10, v1, Lcom/apk/ji;->catch:I

    iget-object v11, v1, Lcom/apk/ji;->class:Lcom/apk/ii$do;

    iget-object v12, v1, Lcom/apk/ji;->do:Ljava/util/Map;

    iget-object v13, v1, Lcom/apk/ji;->super:Ljava/util/List;

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/16 v17, 0x0

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v25, v15

    move v15, v1

    invoke-direct/range {v2 .. v15}, Lcom/apk/ii;-><init>(Landroid/content/Context;Lcom/apk/vk;Lcom/apk/hm;Lcom/apk/pl;Lcom/apk/nl;Lcom/apk/hq;Lcom/apk/zp;ILcom/apk/ii$do;Ljava/util/Map;Ljava/util/List;ZZ)V

    .line 85
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/nq;

    .line 86
    :try_start_1
    iget-object v3, v0, Lcom/apk/ii;->try:Lcom/apk/oi;

    move-object/from16 v4, v25

    invoke-interface {v2, v4, v0, v3}, Lcom/apk/qq;->if(Landroid/content/Context;Lcom/apk/ii;Lcom/apk/oi;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v25, v4

    goto :goto_b

    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1c
    move-object/from16 v4, v25

    if-eqz p1, :cond_1d

    .line 89
    iget-object v1, v0, Lcom/apk/ii;->try:Lcom/apk/oi;

    move-object/from16 v2, p1

    check-cast v2, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;

    .line 90
    new-instance v3, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;

    invoke-direct {v3}, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;-><init>()V

    invoke-virtual {v3, v4, v0, v1}, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;->if(Landroid/content/Context;Lcom/apk/ii;Lcom/apk/oi;)V

    .line 91
    iget-object v2, v2, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->do:Lcom/manhua/utils/image/DesGlideModule;

    invoke-virtual {v2, v4, v0, v1}, Lcom/manhua/utils/image/DesGlideModule;->if(Landroid/content/Context;Lcom/apk/ii;Lcom/apk/oi;)V

    .line 92
    :cond_1d
    invoke-virtual {v4, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 93
    sput-object v0, Lcom/apk/ii;->break:Lcom/apk/ii;

    .line 94
    sput-boolean v17, Lcom/apk/ii;->catch:Z

    return-void

    :catch_1
    move-exception v0

    .line 95
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find metadata to parse GlideModules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static new(Landroid/content/Context;)Lcom/apk/ii;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/ii;->break:Lcom/apk/ii;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/apk/ii;->try(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/apk/ii;->try(Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/apk/ii;->try(Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/apk/ii;->try(Ljava/lang/Exception;)V

    throw v1

    .line 10
    :catch_4
    :goto_0
    const-class v0, Lcom/apk/ii;

    monitor-enter v0

    .line 11
    :try_start_1
    sget-object v2, Lcom/apk/ii;->break:Lcom/apk/ii;

    if-nez v2, :cond_0

    .line 12
    invoke-static {p0, v1}, Lcom/apk/ii;->do(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    .line 13
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 14
    :cond_1
    :goto_1
    sget-object p0, Lcom/apk/ii;->break:Lcom/apk/ii;

    return-object p0
.end method

.method public static try(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public for()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/gs;->do()V

    .line 2
    iget-object v0, p0, Lcom/apk/ii;->for:Lcom/apk/hm;

    check-cast v0, Lcom/apk/ds;

    const-wide/16 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/apk/ds;->try(J)V

    .line 4
    iget-object v0, p0, Lcom/apk/ii;->if:Lcom/apk/pl;

    invoke-interface {v0}, Lcom/apk/pl;->new()V

    .line 5
    iget-object v0, p0, Lcom/apk/ii;->case:Lcom/apk/nl;

    invoke-interface {v0}, Lcom/apk/nl;->new()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ii;->new:Lcom/apk/li;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public if()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/gs;->catch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/ii;->do:Lcom/apk/vk;

    .line 3
    iget-object v0, v0, Lcom/apk/vk;->case:Lcom/apk/vk$for;

    invoke-virtual {v0}, Lcom/apk/vk$for;->do()Lcom/apk/zl;

    move-result-object v0

    invoke-interface {v0}, Lcom/apk/zl;->clear()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call this method on a background thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/ii;->for()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/gs;->do()V

    .line 2
    iget-object v0, p0, Lcom/apk/ii;->this:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/qi;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    throw v2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/apk/ii;->for:Lcom/apk/hm;

    check-cast v0, Lcom/apk/gm;

    if-eqz v0, :cond_5

    const/16 v1, 0x28

    if-lt p1, v1, :cond_2

    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/apk/ds;->try(J)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x14

    if-ge p1, v1, :cond_3

    const/16 v1, 0xf

    if-ne p1, v1, :cond_4

    .line 6
    :cond_3
    monitor-enter v0

    .line 7
    :try_start_0
    iget-wide v1, v0, Lcom/apk/ds;->if:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v3, 0x2

    .line 8
    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/apk/ds;->try(J)V

    .line 9
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/apk/ii;->if:Lcom/apk/pl;

    invoke-interface {v0, p1}, Lcom/apk/pl;->for(I)V

    .line 10
    iget-object v0, p0, Lcom/apk/ii;->case:Lcom/apk/nl;

    invoke-interface {v0, p1}, Lcom/apk/nl;->for(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0

    throw p1

    .line 12
    :cond_5
    throw v2
.end method
