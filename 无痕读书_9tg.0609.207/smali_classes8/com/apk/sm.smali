.class public interface abstract Lcom/apk/sm;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final do:Lcom/apk/sm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/um$do;

    invoke-direct {v0}, Lcom/apk/um$do;-><init>()V

    .line 2
    new-instance v1, Lcom/apk/um;

    iget-object v0, v0, Lcom/apk/um$do;->do:Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/apk/um;-><init>(Ljava/util/Map;)V

    .line 3
    sput-object v1, Lcom/apk/sm;->do:Lcom/apk/sm;

    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
