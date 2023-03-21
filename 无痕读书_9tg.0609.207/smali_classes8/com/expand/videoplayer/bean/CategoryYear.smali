.class public Lcom/expand/videoplayer/bean/CategoryYear;
.super Ljava/lang/Object;
.source "CategoryYear.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0xc206ef6640a48b9L


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/expand/videoplayer/bean/CategoryYear;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/expand/videoplayer/bean/CategoryYear;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/CategoryYear;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/bean/CategoryYear;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/CategoryYear;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/bean/CategoryYear;->name:Ljava/lang/String;

    return-void
.end method
