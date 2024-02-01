import 'package:flutter/material.dart';

List<ProjectModel> projects = [
    ProjectModel(
      title: 'Project One',
      details: '''
        Project One is a groundbreaking initiative that aims to revolutionize the way we approach technology. 
        With a focus on innovation and sustainability, this project seeks to create solutions that address 
        real-world challenges in an ever-evolving digital landscape.
        
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut porttitor neque. 
        Quisque euismod nisl nec orci hendrerit, vel ultrices ligula bibendum. 
        Nulla facilisi. Sed vulputate euismod nisl, vel cursus elit venenatis at. 
        Integer ac magna in purus consectetur pellentesque vel ut metus. 
        Duis tincidunt risus sit amet felis varius dapibus.
        
        Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. 
        Sed vulputate, tortor at dignissim volutpat, orci tellus hendrerit mi, ut ultrices dolor justo nec arcu.
        ''',
      thumbnailUrl: 'https://img.freepik.com/free-vector/workout-tracker-app-interface_23-2148653679.jpg?w=1060&t=st=1706106298~exp=1706106898~hmac=2cb38093b9335314ffffc6eced499cf3bb5053e7ab1d70b71480bb21ab1b7424',
      blocks: [
        InfoBlock(
          text: '''
            Block 1: Some detailed information for block 1. 
            This can include technical specifications, project milestones, and more.
            
            Duis tincidunt risus sit amet felis varius dapibus. 
            Vestibulum sit amet ultrices orci. Nullam congue libero id pharetra vulputate. 
            Curabitur luctus, libero nec fermentum commodo, nunc neque venenatis mi, a vestibulum mi libero eu metus.
            ''',
          imageUrl: 'https://img.freepik.com/free-vector/workout-tracker-app-interface_23-2148653679.jpg?w=1060&t=st=1706106298~exp=1706106898~hmac=2cb38093b9335314ffffc6eced499cf3bb5053e7ab1d70b71480bb21ab1b7424',
        ),
        InfoBlock(
          text: '''
            Block 2: More detailed information for block 2. 
            This can include technical specifications, project milestones, and more.
            
            Integer ac magna in purus consectetur pellentesque vel ut metus. 
            Vestibulum sit amet ultrices orci. Nullam congue libero id pharetra vulputate. 
            Curabitur luctus, libero nec fermentum commodo, nunc neque venenatis mi, a vestibulum mi libero eu metus.
            ''',
          imageUrl: 'https://img.freepik.com/free-vector/workout-tracker-app-interface_23-2148653679.jpg?w=1060&t=st=1706106298~exp=1706106898~hmac=2cb38093b9335314ffffc6eced499cf3bb5053e7ab1d70b71480bb21ab1b7424',
        ),
      ],
    ),
    ProjectModel(
      title: 'Project Two',
      details: '''
        Project Two is a multifaceted endeavor that aims to push the boundaries of creativity and technology. 
        Focused on user experience and cutting-edge design, this project seeks to deliver solutions that leave a lasting impact.

        Duis tincidunt risus sit amet felis varius dapibus. 
        Vestibulum sit amet ultrices orci. Nullam congue libero id pharetra vulputate. 
        Curabitur luctus, libero nec fermentum commodo, nunc neque venenatis mi, a vestibulum mi libero eu metus.
        
        Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. 
        Sed vulputate, tortor at dignissim volutpat, orci tellus hendrerit mi, ut ultrices dolor justo nec arcu.
        ''',
      thumbnailUrl: 'https://img.freepik.com/free-vector/workout-tracker-app-interface_23-2148653679.jpg?w=1060&t=st=1706106298~exp=1706106898~hmac=2cb38093b9335314ffffc6eced499cf3bb5053e7ab1d70b71480bb21ab1b7424',
      blocks: [
        InfoBlock(
          text: '''
            Block 1: Some detailed information for block 1. 
            This can include technical specifications, project milestones, and more.
            
            Integer ac magna in purus consectetur pellentesque vel ut metus. 
            Vestibulum sit amet ultrices orci. Nullam congue libero id pharetra vulputate. 
            Curabitur luctus, libero nec fermentum commodo, nunc neque venenatis mi, a vestibulum mi libero eu metus.
            ''',
          imageUrl: 'https://img.freepik.com/free-vector/workout-tracker-app-interface_23-2148653679.jpg?w=1060&t=st=1706106298~exp=1706106898~hmac=2cb38093b9335314ffffc6eced499cf3bb5053e7ab1d70b71480bb21ab1b7424',
        ),
        InfoBlock(
          text: '''
            Block 2: More detailed information for block 2. 
            This can include technical specifications, project milestones, and more.
            
            Duis tincidunt risus sit amet felis varius dapibus. 
            Vestibulum sit amet ultrices orci. Nullam congue libero id pharetra vulputate. 
            Curabitur luctus, libero nec fermentum commodo, nunc neque venenatis mi, a vestibulum mi libero eu metus.
            ''',
          imageUrl: 'https://img.freepik.com/free-vector/workout-tracker-app-interface_23-2148653679.jpg?w=1060&t=st=1706106298~exp=1706106898~hmac=2cb38093b9335314ffffc6eced499cf3bb5053e7ab1d70b71480bb21ab1b7424',
        ),
      ],
    ),
  ];



class ProjectModel {
  final String title;
  final String details;
  final String thumbnailUrl;
  final List<InfoBlock>? blocks;

  ProjectModel({
    required this.title,
    required this.thumbnailUrl,
    required this.details,
    this.blocks,
  });
}

class InfoBlock {
  final String? text;
  final String? imageUrl;
  final Image? video;

  InfoBlock({
    this.text,
    this.imageUrl,
    this.video,
  });
}
