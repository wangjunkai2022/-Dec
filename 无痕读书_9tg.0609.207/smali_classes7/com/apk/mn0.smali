.class public abstract Lcom/apk/mn0;
.super Lcom/apk/jm0;
.source "TagToken.java"


# instance fields
.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/jm0;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/apk/jm0;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/apk/mn0;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract new(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/mn0;->if:Ljava/lang/String;

    return-object v0
.end method

.method public try()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/mn0;->if:Ljava/lang/String;

    return-object v0
.end method
