.class public abstract Lcom/apk/co;
.super Ljava/lang/Object;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/co$try;,
        Lcom/apk/co$do;,
        Lcom/apk/co$new;,
        Lcom/apk/co$if;,
        Lcom/apk/co$for;
    }
.end annotation


# static fields
.field public static final case:Lcom/apk/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/lj<",
            "Lcom/apk/co;",
            ">;"
        }
    .end annotation
.end field

.field public static final do:Lcom/apk/co;

.field public static final else:Z

.field public static final for:Lcom/apk/co;

.field public static final if:Lcom/apk/co;

.field public static final new:Lcom/apk/co;

.field public static final try:Lcom/apk/co;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/co$for;

    invoke-direct {v0}, Lcom/apk/co$for;-><init>()V

    sput-object v0, Lcom/apk/co;->do:Lcom/apk/co;

    .line 2
    new-instance v0, Lcom/apk/co$do;

    invoke-direct {v0}, Lcom/apk/co$do;-><init>()V

    sput-object v0, Lcom/apk/co;->if:Lcom/apk/co;

    .line 3
    new-instance v0, Lcom/apk/co$if;

    invoke-direct {v0}, Lcom/apk/co$if;-><init>()V

    sput-object v0, Lcom/apk/co;->for:Lcom/apk/co;

    .line 4
    new-instance v0, Lcom/apk/co$new;

    invoke-direct {v0}, Lcom/apk/co$new;-><init>()V

    sput-object v0, Lcom/apk/co;->new:Lcom/apk/co;

    .line 5
    sget-object v0, Lcom/apk/co;->for:Lcom/apk/co;

    sput-object v0, Lcom/apk/co;->try:Lcom/apk/co;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 6
    invoke-static {v1, v0}, Lcom/apk/lj;->do(Ljava/lang/String;Ljava/lang/Object;)Lcom/apk/lj;

    move-result-object v0

    sput-object v0, Lcom/apk/co;->case:Lcom/apk/lj;

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/apk/co;->else:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do(IIII)Lcom/apk/co$try;
.end method

.method public abstract if(IIII)F
.end method
