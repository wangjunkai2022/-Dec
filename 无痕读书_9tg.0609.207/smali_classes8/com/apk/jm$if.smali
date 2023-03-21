.class public final Lcom/apk/jm$if;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"

# interfaces
.implements Lcom/apk/hs$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/jm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public final do:Ljava/security/MessageDigest;

.field public final if:Lcom/apk/ks;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/ks$if;

    invoke-direct {v0}, Lcom/apk/ks$if;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/apk/jm$if;->if:Lcom/apk/ks;

    .line 4
    iput-object p1, p0, Lcom/apk/jm$if;->do:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public if()Lcom/apk/ks;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/jm$if;->if:Lcom/apk/ks;

    return-object v0
.end method
