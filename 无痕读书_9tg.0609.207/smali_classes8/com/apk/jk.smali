.class public Lcom/apk/jk;
.super Ljava/lang/Object;
.source "ThumbnailStreamOpener.java"


# static fields
.field public static final case:Lcom/apk/gk;


# instance fields
.field public final do:Lcom/apk/gk;

.field public final for:Lcom/apk/nl;

.field public final if:Lcom/apk/ik;

.field public final new:Landroid/content/ContentResolver;

.field public final try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/gk;

    invoke-direct {v0}, Lcom/apk/gk;-><init>()V

    sput-object v0, Lcom/apk/jk;->case:Lcom/apk/gk;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/apk/ik;Lcom/apk/nl;Landroid/content/ContentResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/apk/ik;",
            "Lcom/apk/nl;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/jk;->case:Lcom/apk/gk;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/apk/jk;->do:Lcom/apk/gk;

    .line 4
    iput-object p2, p0, Lcom/apk/jk;->if:Lcom/apk/ik;

    .line 5
    iput-object p3, p0, Lcom/apk/jk;->for:Lcom/apk/nl;

    .line 6
    iput-object p4, p0, Lcom/apk/jk;->new:Landroid/content/ContentResolver;

    .line 7
    iput-object p1, p0, Lcom/apk/jk;->try:Ljava/util/List;

    return-void
.end method
