.class public abstract Lcom/apk/uk;
.super Ljava/lang/Object;
.source "DiskCacheStrategy.java"


# static fields
.field public static final do:Lcom/apk/uk;

.field public static final for:Lcom/apk/uk;

.field public static final if:Lcom/apk/uk;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/uk$do;

    invoke-direct {v0}, Lcom/apk/uk$do;-><init>()V

    sput-object v0, Lcom/apk/uk;->do:Lcom/apk/uk;

    .line 2
    new-instance v0, Lcom/apk/uk$if;

    invoke-direct {v0}, Lcom/apk/uk$if;-><init>()V

    sput-object v0, Lcom/apk/uk;->if:Lcom/apk/uk;

    .line 3
    new-instance v0, Lcom/apk/uk$for;

    invoke-direct {v0}, Lcom/apk/uk$for;-><init>()V

    sput-object v0, Lcom/apk/uk;->for:Lcom/apk/uk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do()Z
.end method

.method public abstract for(Lcom/apk/dj;)Z
.end method

.method public abstract if()Z
.end method

.method public abstract new(ZLcom/apk/dj;Lcom/apk/fj;)Z
.end method
